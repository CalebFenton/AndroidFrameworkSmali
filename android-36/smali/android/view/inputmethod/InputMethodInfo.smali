.class public final Landroid/view/inputmethod/InputMethodInfo;
.super Ljava/lang/Object;
.source "InputMethodInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist ACTION_IME_LANGUAGE_SETTINGS:Ljava/lang/String; = "android.view.inputmethod.action.IME_LANGUAGE_SETTINGS"

.field public static final whitelist ACTION_STYLUS_HANDWRITING_SETTINGS:Ljava/lang/String; = "android.view.inputmethod.action.STYLUS_HANDWRITING_SETTINGS"

.field public static final blacklist COMPONENT_NAME_MAX_LENGTH:I = 0x3e8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_IMES_PER_PACKAGE:I = 0x14

.field static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodInfo"


# instance fields
.field private final greylist-max-o mForceDefault:Z

.field private final blacklist mHandledConfigChanges:I

.field final greylist-max-o mId:Ljava/lang/String;

.field private final blacklist mInlineSuggestionsEnabled:Z

.field private final greylist-max-o mIsAuxIme:Z

.field final greylist-max-o mIsDefaultResId:I

.field final blacklist mIsVirtualDeviceOnly:Z

.field final greylist-max-o mIsVrOnly:Z

.field private final blacklist mLanguageSettingsActivityName:Ljava/lang/String;

.field final greylist-max-o mService:Landroid/content/pm/ResolveInfo;

.field final greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field private final blacklist mShowInInputMethodPicker:Z

.field private final blacklist mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

.field private final greylist mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

.field private final blacklist mSupportsConnectionlessStylusHandwriting:Z

.field private final blacklist mSupportsInlineSuggestionsWithTouchExploration:Z

.field private final blacklist mSupportsStylusHandwriting:Z

.field private final greylist-max-o mSupportsSwitchingToNextInputMethod:Z

.field private final blacklist mSuppressesSpellChecker:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1049
    new-instance v0, Landroid/view/inputmethod/InputMethodInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 240
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    .registers 37
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    .local p3, "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 255
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 256
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v2}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 257
    const/4 v5, 0x1

    .line 258
    .local v5, "isAuxIme":Z
    const/4 v6, 0x0

    .line 259
    .local v6, "supportsSwitchingToNextInputMethod":Z
    const/4 v7, 0x0

    .line 260
    .local v7, "inlineSuggestionsEnabled":Z
    const/4 v8, 0x0

    .line 261
    .local v8, "supportsInlineSuggestionsWithTouchExploration":Z
    const/4 v9, 0x0

    .line 262
    .local v9, "suppressesSpellChecker":Z
    const/4 v10, 0x1

    .line 263
    .local v10, "showInInputMethodPicker":Z
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 266
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 267
    .local v12, "settingsActivityComponent":Ljava/lang/String;
    const/4 v13, 0x0

    .line 268
    .local v13, "languageSettingsActivityComponent":Ljava/lang/String;
    const/4 v14, 0x0

    .line 271
    .local v14, "stylusHandwritingSettingsActivity":Ljava/lang/String;
    const/4 v15, 0x0

    .line 273
    .local v15, "isDefaultResId":I
    const/16 v16, 0x0

    .line 274
    .local v16, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v17

    .line 276
    .local v18, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :try_start_2d
    const-string v0, "android.view.im"

    invoke-virtual {v4, v11, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object/from16 v16, v0

    .line 277
    if-eqz v16, :cond_3c5

    .line 282
    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 284
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static/range {v16 .. v16}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v19

    move-object/from16 v20, v19

    .line 287
    .local v20, "attrs":Landroid/util/AttributeSet;
    :goto_43
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_47} :catch_3ef
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2d .. :try_end_47} :catch_3ef
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_47} :catch_3ef
    .catchall {:try_start_2d .. :try_end_47} :catchall_3e3

    move/from16 v19, v2

    move/from16 v21, v5

    .end local v5    # "isAuxIme":Z
    .local v19, "type":I
    .local v21, "isAuxIme":Z
    const/4 v5, 0x1

    if-eq v2, v5, :cond_58

    move/from16 v2, v19

    const/4 v5, 0x2

    .end local v19    # "type":I
    .local v2, "type":I
    if-eq v2, v5, :cond_5a

    move-object/from16 v2, p2

    move/from16 v5, v21

    goto :goto_43

    .end local v2    # "type":I
    .restart local v19    # "type":I
    :cond_58
    move/from16 v2, v19

    .line 291
    .end local v19    # "type":I
    .restart local v2    # "type":I
    :cond_5a
    :try_start_5a
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "nodeName":Ljava/lang/String;
    move/from16 v22, v2

    .end local v2    # "type":I
    .local v22, "type":I
    const-string v2, "input-method"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39a

    .line 297
    sget-object v2, Lcom/android/internal/R$styleable;->InputMethod:[I

    move-object/from16 v23, v5

    move-object/from16 v5, v20

    .end local v20    # "attrs":Landroid/util/AttributeSet;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .local v23, "nodeName":Ljava/lang/String;
    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_72} :catch_3bb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5a .. :try_end_72} :catch_3bb
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_72} :catch_3bb
    .catchall {:try_start_5a .. :try_end_72} :catchall_3b0

    .line 299
    .local v2, "sa":Landroid/content/res/TypedArray;
    move/from16 v20, v6

    const/4 v6, 0x2

    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .local v20, "supportsSwitchingToNextInputMethod":Z
    :try_start_75
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v12, v24

    .line 301
    invoke-static {}, Landroid/view/inputmethod/Flags;->imeSwitcherRevampApi()Z

    move-result v6
    :try_end_7f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_75 .. :try_end_7f} :catch_38f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_75 .. :try_end_7f} :catch_38f
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_7f} :catch_38f
    .catchall {:try_start_75 .. :try_end_7f} :catchall_384

    if-eqz v6, :cond_9b

    .line 302
    const/16 v6, 0xd

    :try_start_83
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_87
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_83 .. :try_end_87} :catch_92
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_83 .. :try_end_87} :catch_92
    .catch Ljava/lang/NumberFormatException; {:try_start_83 .. :try_end_87} :catch_92
    .catchall {:try_start_83 .. :try_end_87} :catchall_89

    move-object v13, v6

    goto :goto_9b

    .line 396
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v22    # "type":I
    .end local v23    # "nodeName":Ljava/lang/String;
    :catchall_89
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v6, v20

    goto/16 :goto_418

    .line 392
    :catch_92
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v6, v20

    goto/16 :goto_3fa

    .line 305
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v22    # "type":I
    .restart local v23    # "nodeName":Ljava/lang/String;
    :cond_9b
    :goto_9b
    :try_start_9b
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;
    :try_end_9d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9b .. :try_end_9d} :catch_38f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9b .. :try_end_9d} :catch_38f
    .catch Ljava/lang/NumberFormatException; {:try_start_9b .. :try_end_9d} :catch_38f
    .catchall {:try_start_9b .. :try_end_9d} :catchall_384

    move-object/from16 v24, v6

    if-eqz v24, :cond_c4

    :try_start_a1
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a1 .. :try_end_a7} :catch_b9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a1 .. :try_end_a7} :catch_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_a1 .. :try_end_a7} :catch_b9
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_ae

    move/from16 v25, v7

    const/16 v7, 0x3e8

    .end local v7    # "inlineSuggestionsEnabled":Z
    .local v25, "inlineSuggestionsEnabled":Z
    if-gt v6, v7, :cond_f2

    goto :goto_c6

    .line 396
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v22    # "type":I
    .end local v23    # "nodeName":Ljava/lang/String;
    .end local v25    # "inlineSuggestionsEnabled":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    :catchall_ae
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v6, v20

    .end local v7    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    goto/16 :goto_418

    .line 392
    .end local v25    # "inlineSuggestionsEnabled":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    :catch_b9
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v6, v20

    .end local v7    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    goto/16 :goto_3fa

    .line 305
    .end local v25    # "inlineSuggestionsEnabled":Z
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v22    # "type":I
    .restart local v23    # "nodeName":Ljava/lang/String;
    :cond_c4
    move/from16 v25, v7

    .end local v7    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    :goto_c6
    if-eqz v12, :cond_e7

    .line 307
    :try_start_c8
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x3e8

    if-gt v6, v7, :cond_f2

    goto :goto_e7

    .line 396
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v22    # "type":I
    .end local v23    # "nodeName":Ljava/lang/String;
    :catchall_d1
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v6, v20

    move/from16 v7, v25

    goto/16 :goto_418

    .line 392
    :catch_dc
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v6, v20

    move/from16 v7, v25

    goto/16 :goto_3fa

    .line 307
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v22    # "type":I
    .restart local v23    # "nodeName":Ljava/lang/String;
    :cond_e7
    :goto_e7
    if-eqz v13, :cond_fa

    .line 310
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x3e8

    if-gt v6, v7, :cond_f2

    goto :goto_fa

    .line 312
    :cond_f2
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Activity name exceeds maximum of 1000 characters"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .end local v9    # "suppressesSpellChecker":Z
    .end local v10    # "showInInputMethodPicker":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "settingsActivityComponent":Ljava/lang/String;
    .end local v13    # "languageSettingsActivityComponent":Ljava/lang/String;
    .end local v14    # "stylusHandwritingSettingsActivity":Ljava/lang/String;
    .end local v15    # "isDefaultResId":I
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v21    # "isAuxIme":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    .end local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    throw v6
    :try_end_fa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c8 .. :try_end_fa} :catch_dc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c8 .. :try_end_fa} :catch_dc
    .catch Ljava/lang/NumberFormatException; {:try_start_c8 .. :try_end_fa} :catch_dc
    .catchall {:try_start_c8 .. :try_end_fa} :catchall_d1

    .line 316
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .restart local v9    # "suppressesSpellChecker":Z
    .restart local v10    # "showInInputMethodPicker":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v13    # "languageSettingsActivityComponent":Ljava/lang/String;
    .restart local v14    # "stylusHandwritingSettingsActivity":Ljava/lang/String;
    .restart local v15    # "isDefaultResId":I
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v21    # "isAuxIme":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_fa
    :goto_fa
    const/4 v6, 0x4

    const/4 v7, 0x0

    :try_start_fc
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v24, v17

    .line 317
    .local v24, "isVrOnly":Z
    const/16 v6, 0xb

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v26, v17

    .line 319
    .local v26, "isVirtualDeviceOnly":Z
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v15, v17

    .line 321
    const/4 v6, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17
    :try_end_116
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fc .. :try_end_116} :catch_379
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_fc .. :try_end_116} :catch_379
    .catch Ljava/lang/NumberFormatException; {:try_start_fc .. :try_end_116} :catch_379
    .catchall {:try_start_fc .. :try_end_116} :catchall_36e

    move/from16 v20, v17

    .line 324
    const/4 v6, 0x5

    :try_start_119
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17
    :try_end_11d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_119 .. :try_end_11d} :catch_362
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_119 .. :try_end_11d} :catch_362
    .catch Ljava/lang/NumberFormatException; {:try_start_119 .. :try_end_11d} :catch_362
    .catchall {:try_start_119 .. :try_end_11d} :catchall_356

    move/from16 v25, v17

    .line 326
    const/16 v6, 0x9

    :try_start_121
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v8, v17

    .line 329
    const/4 v6, 0x6

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v9, v17

    .line 331
    const/4 v6, 0x7

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    move/from16 v10, v27

    .line 333
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v1, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I
    :try_end_13d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_121 .. :try_end_13d} :catch_349
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_121 .. :try_end_13d} :catch_349
    .catch Ljava/lang/NumberFormatException; {:try_start_121 .. :try_end_13d} :catch_349
    .catchall {:try_start_121 .. :try_end_13d} :catchall_33c

    .line 335
    const/16 v6, 0x8

    move-object/from16 v28, v11

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v28, "pm":Landroid/content/pm/PackageManager;
    :try_start_141
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    .line 337
    const/16 v11, 0xc

    invoke-virtual {v2, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    .line 340
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    .line 342
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 346
    .local v11, "depth":I
    :goto_15d
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6
    :try_end_161
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_141 .. :try_end_161} :catch_331
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_141 .. :try_end_161} :catch_331
    .catch Ljava/lang/NumberFormatException; {:try_start_141 .. :try_end_161} :catch_331
    .catchall {:try_start_141 .. :try_end_161} :catchall_326

    move/from16 v29, v6

    const/4 v7, 0x3

    .end local v22    # "type":I
    .local v29, "type":I
    if-ne v6, v7, :cond_183

    :try_start_166
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6
    :try_end_16a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_166 .. :try_end_16a} :catch_17a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_166 .. :try_end_16a} :catch_17a
    .catch Ljava/lang/NumberFormatException; {:try_start_166 .. :try_end_16a} :catch_17a
    .catchall {:try_start_166 .. :try_end_16a} :catchall_171

    if-le v6, v11, :cond_16d

    goto :goto_183

    :cond_16d
    move-object/from16 v5, v18

    goto/16 :goto_29e

    .line 396
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "depth":I
    .end local v23    # "nodeName":Ljava/lang/String;
    .end local v24    # "isVrOnly":Z
    .end local v26    # "isVirtualDeviceOnly":Z
    .end local v29    # "type":I
    :catchall_171
    move-exception v0

    move-object/from16 v5, v18

    move/from16 v6, v20

    move/from16 v7, v25

    goto/16 :goto_418

    .line 392
    :catch_17a
    move-exception v0

    move-object/from16 v5, v18

    move/from16 v6, v20

    move/from16 v7, v25

    goto/16 :goto_3fa

    .line 346
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v11    # "depth":I
    .restart local v23    # "nodeName":Ljava/lang/String;
    .restart local v24    # "isVrOnly":Z
    .restart local v26    # "isVirtualDeviceOnly":Z
    .restart local v29    # "type":I
    :cond_183
    :goto_183
    move/from16 v6, v29

    const/4 v7, 0x1

    .end local v29    # "type":I
    .local v6, "type":I
    if-eq v6, v7, :cond_294

    .line 348
    const/4 v7, 0x2

    if-ne v6, v7, :cond_27e

    .line 349
    :try_start_18b
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 350
    .end local v23    # "nodeName":Ljava/lang/String;
    .local v7, "nodeName":Ljava/lang/String;
    move-object/from16 v29, v2

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v29, "sa":Landroid/content/res/TypedArray;
    const-string/jumbo v2, "subtype"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25a

    .line 354
    sget-object v2, Lcom/android/internal/R$styleable;->InputMethod_Subtype:[I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 356
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object/from16 v30, v0

    const/16 v0, 0xa

    .end local v0    # "res":Landroid/content/res/Resources;
    .local v30, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    .line 358
    .local v23, "pkLanguageTag":Ljava/lang/String;
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 360
    .local v22, "pkLayoutType":Ljava/lang/String;
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 361
    move-object/from16 v31, v5

    move/from16 v32, v6

    const/4 v5, 0x0

    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "type":I
    .local v31, "attrs":Landroid/util/AttributeSet;
    .local v32, "type":I
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 363
    move-object/from16 v19, v7

    const/4 v6, 0x1

    .end local v7    # "nodeName":Ljava/lang/String;
    .local v19, "nodeName":Ljava/lang/String;
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 366
    if-nez v23, :cond_1d3

    const/4 v5, 0x0

    move-object/from16 v7, v23

    goto :goto_1da

    :cond_1d3
    new-instance v5, Landroid/icu/util/ULocale;

    move-object/from16 v7, v23

    .end local v23    # "pkLanguageTag":Ljava/lang/String;
    .local v7, "pkLanguageTag":Ljava/lang/String;
    invoke-direct {v5, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V
    :try_end_1da
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18b .. :try_end_1da} :catch_275
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18b .. :try_end_1da} :catch_275
    .catch Ljava/lang/NumberFormatException; {:try_start_18b .. :try_end_1da} :catch_275
    .catchall {:try_start_18b .. :try_end_1da} :catchall_26c

    .line 367
    :goto_1da
    if-nez v22, :cond_1e1

    :try_start_1dc
    const-string v23, ""
    :try_end_1de
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1dc .. :try_end_1de} :catch_17a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1dc .. :try_end_1de} :catch_17a
    .catch Ljava/lang/NumberFormatException; {:try_start_1dc .. :try_end_1de} :catch_17a
    .catchall {:try_start_1dc .. :try_end_1de} :catchall_171

    move-object/from16 v6, v23

    goto :goto_1e3

    :cond_1e1
    move-object/from16 v6, v22

    .line 365
    :goto_1e3
    :try_start_1e3
    invoke-virtual {v0, v5, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setPhysicalKeyboardHint(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 368
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 370
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 372
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 374
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 376
    move-object/from16 v17, v7

    const/4 v5, 0x5

    const/4 v6, 0x0

    .end local v7    # "pkLanguageTag":Ljava/lang/String;
    .local v17, "pkLanguageTag":Ljava/lang/String;
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 378
    const/4 v7, 0x6

    invoke-virtual {v2, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 381
    const/4 v5, 0x7

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 383
    const/16 v7, 0x8

    invoke-virtual {v2, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 385
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 386
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v5
    :try_end_23f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e3 .. :try_end_23f} :catch_275
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e3 .. :try_end_23f} :catch_275
    .catch Ljava/lang/NumberFormatException; {:try_start_1e3 .. :try_end_23f} :catch_275
    .catchall {:try_start_1e3 .. :try_end_23f} :catchall_26c

    if-nez v5, :cond_244

    .line 387
    const/4 v5, 0x0

    move/from16 v21, v5

    .line 389
    :cond_244
    move-object/from16 v5, v18

    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :try_start_246
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    move-object/from16 v18, v5

    move v6, v7

    move-object/from16 v23, v19

    move-object/from16 v2, v29

    move-object/from16 v0, v30

    move-object/from16 v5, v31

    move/from16 v22, v32

    const/16 v7, 0xa

    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v17    # "pkLanguageTag":Ljava/lang/String;
    .end local v22    # "pkLayoutType":Ljava/lang/String;
    goto/16 :goto_15d

    .line 351
    .end local v19    # "nodeName":Ljava/lang/String;
    .end local v30    # "res":Landroid/content/res/Resources;
    .end local v31    # "attrs":Landroid/util/AttributeSet;
    .end local v32    # "type":I
    .local v0, "res":Landroid/content/res/Resources;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "type":I
    .local v7, "nodeName":Ljava/lang/String;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_25a
    move-object/from16 v30, v0

    move-object/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v19, v7

    move-object/from16 v5, v18

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v6    # "type":I
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v19    # "nodeName":Ljava/lang/String;
    .restart local v30    # "res":Landroid/content/res/Resources;
    .restart local v31    # "attrs":Landroid/util/AttributeSet;
    .restart local v32    # "type":I
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Meta-data in input-method does not start with subtype tag"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .end local v9    # "suppressesSpellChecker":Z
    .end local v10    # "showInInputMethodPicker":Z
    .end local v12    # "settingsActivityComponent":Ljava/lang/String;
    .end local v13    # "languageSettingsActivityComponent":Ljava/lang/String;
    .end local v14    # "stylusHandwritingSettingsActivity":Ljava/lang/String;
    .end local v15    # "isDefaultResId":I
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v21    # "isAuxIme":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    .end local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    throw v0
    :try_end_26c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_246 .. :try_end_26c} :catch_3dd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_246 .. :try_end_26c} :catch_3dd
    .catch Ljava/lang/NumberFormatException; {:try_start_246 .. :try_end_26c} :catch_3dd
    .catchall {:try_start_246 .. :try_end_26c} :catchall_3d7

    .line 396
    .end local v11    # "depth":I
    .end local v19    # "nodeName":Ljava/lang/String;
    .end local v24    # "isVrOnly":Z
    .end local v26    # "isVirtualDeviceOnly":Z
    .end local v29    # "sa":Landroid/content/res/TypedArray;
    .end local v30    # "res":Landroid/content/res/Resources;
    .end local v31    # "attrs":Landroid/util/AttributeSet;
    .end local v32    # "type":I
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .restart local v9    # "suppressesSpellChecker":Z
    .restart local v10    # "showInInputMethodPicker":Z
    .restart local v12    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v13    # "languageSettingsActivityComponent":Ljava/lang/String;
    .restart local v14    # "stylusHandwritingSettingsActivity":Ljava/lang/String;
    .restart local v15    # "isDefaultResId":I
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v21    # "isAuxIme":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_26c
    move-exception v0

    move-object/from16 v5, v18

    move/from16 v6, v20

    move/from16 v7, v25

    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    goto/16 :goto_418

    .line 392
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catch_275
    move-exception v0

    move-object/from16 v5, v18

    move/from16 v6, v20

    move/from16 v7, v25

    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    goto/16 :goto_3fa

    .line 348
    .restart local v0    # "res":Landroid/content/res/Resources;
    .local v2, "sa":Landroid/content/res/TypedArray;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "type":I
    .restart local v11    # "depth":I
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v23, "nodeName":Ljava/lang/String;
    .restart local v24    # "isVrOnly":Z
    .restart local v26    # "isVirtualDeviceOnly":Z
    :cond_27e
    move-object/from16 v30, v0

    move-object/from16 v29, v2

    move-object/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v5, v18

    const/4 v6, 0x0

    const/16 v7, 0x8

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .end local v6    # "type":I
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v29    # "sa":Landroid/content/res/TypedArray;
    .restart local v30    # "res":Landroid/content/res/Resources;
    .restart local v31    # "attrs":Landroid/util/AttributeSet;
    .restart local v32    # "type":I
    move v6, v7

    move-object/from16 v5, v31

    move/from16 v22, v32

    const/16 v7, 0xa

    goto/16 :goto_15d

    .line 346
    .end local v29    # "sa":Landroid/content/res/TypedArray;
    .end local v30    # "res":Landroid/content/res/Resources;
    .end local v31    # "attrs":Landroid/util/AttributeSet;
    .end local v32    # "type":I
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "type":I
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_294
    move-object/from16 v30, v0

    move-object/from16 v29, v2

    move-object/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v5, v18

    .line 396
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .end local v6    # "type":I
    .end local v11    # "depth":I
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v23    # "nodeName":Ljava/lang/String;
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_29e
    if-eqz v16, :cond_2a3

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    .line 399
    :cond_2a3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2ae

    .line 400
    const/16 v21, 0x0

    move/from16 v0, v21

    goto :goto_2b0

    .line 399
    :cond_2ae
    move/from16 v0, v21

    .line 403
    .end local v21    # "isAuxIme":Z
    .local v0, "isAuxIme":Z
    :goto_2b0
    if-eqz v3, :cond_2fe

    .line 404
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 405
    .local v2, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2b7
    if-ge v6, v2, :cond_2fc

    .line 406
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 407
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2cb

    .line 408
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v2

    goto :goto_2f7

    .line 410
    :cond_2cb
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    .end local v2    # "N":I
    .local v17, "N":I
    const-string v2, "Duplicated subtype definition found: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 411
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    const-string v11, "InputMethodInfo"

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_2f7
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v17

    goto :goto_2b7

    .end local v17    # "N":I
    .restart local v2    # "N":I
    :cond_2fc
    move/from16 v17, v2

    .line 415
    .end local v2    # "N":I
    .end local v6    # "i":I
    :cond_2fe
    new-instance v2, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v2, v5}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object v2, v1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 416
    iput-object v12, v1, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 417
    iput-object v13, v1, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    .line 418
    iput-object v14, v1, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    .line 419
    iput v15, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 420
    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 421
    move/from16 v2, v20

    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .local v2, "supportsSwitchingToNextInputMethod":Z
    iput-boolean v2, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 422
    move/from16 v6, v25

    .end local v25    # "inlineSuggestionsEnabled":Z
    .local v6, "inlineSuggestionsEnabled":Z
    iput-boolean v6, v1, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    .line 423
    iput-boolean v8, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    .line 425
    iput-boolean v9, v1, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    .line 426
    iput-boolean v10, v1, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    .line 427
    move/from16 v7, v24

    .end local v24    # "isVrOnly":Z
    .local v7, "isVrOnly":Z
    iput-boolean v7, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 428
    move/from16 v11, v26

    .end local v26    # "isVirtualDeviceOnly":Z
    .local v11, "isVirtualDeviceOnly":Z
    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    .line 429
    return-void

    .line 396
    .end local v0    # "isAuxIme":Z
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "inlineSuggestionsEnabled":Z
    .end local v7    # "isVrOnly":Z
    .end local v11    # "isVirtualDeviceOnly":Z
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v21    # "isAuxIme":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    :catchall_326
    move-exception v0

    move-object/from16 v5, v18

    move/from16 v2, v20

    move/from16 v6, v25

    move v7, v6

    move v6, v2

    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v6    # "inlineSuggestionsEnabled":Z
    goto/16 :goto_418

    .line 392
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "inlineSuggestionsEnabled":Z
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    :catch_331
    move-exception v0

    move-object/from16 v5, v18

    move/from16 v2, v20

    move/from16 v6, v25

    move v7, v6

    move v6, v2

    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v6    # "inlineSuggestionsEnabled":Z
    goto/16 :goto_3fa

    .line 396
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .local v11, "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    :catchall_33c
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v2, v20

    move/from16 v6, v25

    move v7, v6

    move v6, v2

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v6    # "inlineSuggestionsEnabled":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_418

    .line 392
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    :catch_349
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v2, v20

    move/from16 v6, v25

    move v7, v6

    move v6, v2

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v6    # "inlineSuggestionsEnabled":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_3fa

    .line 396
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    :catchall_356
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v2, v20

    move v6, v2

    move/from16 v7, v25

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_418

    .line 392
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    :catch_362
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v2, v20

    move v6, v2

    move/from16 v7, v25

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_3fa

    .line 396
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    :catchall_36e
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v6, v20

    move/from16 v7, v25

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_418

    .line 392
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catch_379
    move-exception v0

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v6, v20

    move/from16 v7, v25

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_3fa

    .line 396
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v25    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .local v7, "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_384
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v6, v20

    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v25    # "inlineSuggestionsEnabled":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_418

    .line 392
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v25    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catch_38f
    move-exception v0

    move/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move/from16 v6, v20

    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v25    # "inlineSuggestionsEnabled":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_3fa

    .line 293
    .end local v25    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "res":Landroid/content/res/Resources;
    .local v5, "nodeName":Ljava/lang/String;
    .local v6, "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v20, "attrs":Landroid/util/AttributeSet;
    .local v22, "type":I
    :cond_39a
    move-object/from16 v30, v0

    move-object/from16 v23, v5

    move/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    move-object/from16 v31, v20

    move/from16 v20, v6

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v20, "supportsSwitchingToNextInputMethod":Z
    .restart local v23    # "nodeName":Ljava/lang/String;
    .restart local v25    # "inlineSuggestionsEnabled":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "res":Landroid/content/res/Resources;
    .restart local v31    # "attrs":Landroid/util/AttributeSet;
    :try_start_3a8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Meta-data does not start with input-method tag"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .end local v9    # "suppressesSpellChecker":Z
    .end local v10    # "showInInputMethodPicker":Z
    .end local v12    # "settingsActivityComponent":Ljava/lang/String;
    .end local v13    # "languageSettingsActivityComponent":Ljava/lang/String;
    .end local v14    # "stylusHandwritingSettingsActivity":Ljava/lang/String;
    .end local v15    # "isDefaultResId":I
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v21    # "isAuxIme":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    .end local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    throw v0

    .line 396
    .end local v22    # "type":I
    .end local v23    # "nodeName":Ljava/lang/String;
    .end local v30    # "res":Landroid/content/res/Resources;
    .end local v31    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .restart local v9    # "suppressesSpellChecker":Z
    .restart local v10    # "showInInputMethodPicker":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v13    # "languageSettingsActivityComponent":Ljava/lang/String;
    .restart local v14    # "stylusHandwritingSettingsActivity":Ljava/lang/String;
    .restart local v15    # "isDefaultResId":I
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v21    # "isAuxIme":Z
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_3b0
    move-exception v0

    move/from16 v20, v6

    move/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_418

    .line 392
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catch_3bb
    move-exception v0

    move/from16 v20, v6

    move/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_3fa

    .line 278
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v21    # "isAuxIme":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "isAuxIme":Z
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_3c5
    move/from16 v21, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v21    # "isAuxIme":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No android.view.im meta-data"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .end local v9    # "suppressesSpellChecker":Z
    .end local v10    # "showInInputMethodPicker":Z
    .end local v12    # "settingsActivityComponent":Ljava/lang/String;
    .end local v13    # "languageSettingsActivityComponent":Ljava/lang/String;
    .end local v14    # "stylusHandwritingSettingsActivity":Ljava/lang/String;
    .end local v15    # "isDefaultResId":I
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v21    # "isAuxIme":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    .end local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    throw v0
    :try_end_3d7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a8 .. :try_end_3d7} :catch_3dd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a8 .. :try_end_3d7} :catch_3dd
    .catch Ljava/lang/NumberFormatException; {:try_start_3a8 .. :try_end_3d7} :catch_3dd
    .catchall {:try_start_3a8 .. :try_end_3d7} :catchall_3d7

    .line 396
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .restart local v9    # "suppressesSpellChecker":Z
    .restart local v10    # "showInInputMethodPicker":Z
    .restart local v12    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v13    # "languageSettingsActivityComponent":Ljava/lang/String;
    .restart local v14    # "stylusHandwritingSettingsActivity":Ljava/lang/String;
    .restart local v15    # "isDefaultResId":I
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v21    # "isAuxIme":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_3d7
    move-exception v0

    move/from16 v6, v20

    move/from16 v7, v25

    goto :goto_418

    .line 392
    :catch_3dd
    move-exception v0

    move/from16 v6, v20

    move/from16 v7, v25

    goto :goto_3fa

    .line 396
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v21    # "isAuxIme":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "isAuxIme":Z
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_3e3
    move-exception v0

    move/from16 v21, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    .restart local v21    # "isAuxIme":Z
    .restart local v25    # "inlineSuggestionsEnabled":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_418

    .line 392
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    .end local v21    # "isAuxIme":Z
    .end local v25    # "inlineSuggestionsEnabled":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "isAuxIme":Z
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catch_3ef
    move-exception v0

    move/from16 v21, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move-object/from16 v28, v11

    move-object/from16 v5, v18

    .line 393
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v0, "e":Ljava/lang/Exception;
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v21    # "isAuxIme":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    :goto_3fa
    :try_start_3fa
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "e":Ljava/lang/Exception;
    .local v17, "e":Ljava/lang/Exception;
    const-string v0, "Unable to create context for: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .end local v9    # "suppressesSpellChecker":Z
    .end local v10    # "showInInputMethodPicker":Z
    .end local v12    # "settingsActivityComponent":Ljava/lang/String;
    .end local v13    # "languageSettingsActivityComponent":Ljava/lang/String;
    .end local v14    # "stylusHandwritingSettingsActivity":Ljava/lang/String;
    .end local v15    # "isDefaultResId":I
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "isAuxIme":Z
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    .end local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    throw v2
    :try_end_417
    .catchall {:try_start_3fa .. :try_end_417} :catchall_417

    .line 396
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .restart local v9    # "suppressesSpellChecker":Z
    .restart local v10    # "showInInputMethodPicker":Z
    .restart local v12    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v13    # "languageSettingsActivityComponent":Ljava/lang/String;
    .restart local v14    # "stylusHandwritingSettingsActivity":Ljava/lang/String;
    .restart local v15    # "isDefaultResId":I
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "isAuxIme":Z
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_417
    move-exception v0

    :goto_418
    if-eqz v16, :cond_41d

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    .line 397
    :cond_41d
    throw v0
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V
    .registers 33
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "isAuxIme"    # Z
    .param p3, "settingsActivity"    # Ljava/lang/String;
    .param p4, "languageSettingsActivity"    # Ljava/lang/String;
    .param p6, "isDefaultResId"    # I
    .param p7, "forceDefault"    # Z
    .param p8, "supportsSwitchingToNextInputMethod"    # Z
    .param p9, "inlineSuggestionsEnabled"    # Z
    .param p10, "isVrOnly"    # Z
    .param p11, "isVirtualDeviceOnly"    # Z
    .param p12, "handledConfigChanges"    # I
    .param p13, "supportsStylusHandwriting"    # Z
    .param p14, "supportsConnectionlessStylusHandwriting"    # Z
    .param p15, "stylusHandwritingSettingsActivityAttr"    # Ljava/lang/String;
    .param p16, "supportsInlineSuggestionsWithTouchExploration"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZZZZZIZZ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 640
    .local p5, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 641
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 642
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    iput-object v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 643
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 644
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 645
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    .line 646
    move/from16 v5, p6

    iput v5, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 647
    move/from16 v6, p2

    iput-boolean v6, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 648
    new-instance v7, Landroid/view/inputmethod/InputMethodSubtypeArray;

    move-object/from16 v8, p5

    invoke-direct {v7, v8}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object v7, v0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 649
    move/from16 v7, p7

    iput-boolean v7, v0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 650
    move/from16 v9, p8

    iput-boolean v9, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 651
    move/from16 v10, p9

    iput-boolean v10, v0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    .line 652
    move/from16 v11, p16

    iput-boolean v11, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    .line 654
    const/4 v12, 0x0

    iput-boolean v12, v0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    .line 655
    const/4 v12, 0x1

    iput-boolean v12, v0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    .line 656
    move/from16 v12, p10

    iput-boolean v12, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 657
    move/from16 v13, p11

    iput-boolean v13, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    .line 658
    move/from16 v14, p12

    iput v14, v0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    .line 659
    move/from16 v15, p13

    iput-boolean v15, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    .line 660
    move/from16 v1, p14

    iput-boolean v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    .line 661
    move-object/from16 v1, p15

    iput-object v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    .line 662
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZ)V
    .registers 24
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "isAuxIme"    # Z
    .param p3, "settingsActivity"    # Ljava/lang/String;
    .param p5, "isDefaultResId"    # I
    .param p6, "forceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZ)V"
        }
    .end annotation

    .line 602
    .local p4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 610
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZ)V
    .registers 26
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "isAuxIme"    # Z
    .param p3, "settingsActivity"    # Ljava/lang/String;
    .param p5, "isDefaultResId"    # I
    .param p6, "forceDefault"    # Z
    .param p7, "supportsSwitchingToNextInputMethod"    # Z
    .param p8, "isVrOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZZZ)V"
        }
    .end annotation

    .line 619
    .local p4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 627
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    move v0, v2

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_30

    move v0, v2

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3b

    move v0, v2

    goto :goto_3c

    :cond_3b
    move v0, v1

    :goto_3c
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_45

    goto :goto_46

    :cond_45
    move v2, v1

    :goto_46
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    .line 490
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 491
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    .line 496
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 497
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 3
    .param p1, "source"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 435
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V

    .line 436
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V
    .registers 8
    .param p1, "source"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .line 442
    .local p2, "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 444
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 445
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    .line 446
    iget v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 447
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 448
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 449
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    .line 450
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    .line 452
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    .line 453
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    .line 454
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 455
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    .line 456
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 457
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 458
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    goto :goto_68

    .line 460
    :cond_42
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->toList()Ljava/util/ArrayList;

    move-result-object v0

    .line 461
    .local v0, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 462
    .local v1, "additionalSubtypeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    if-ge v2, v1, :cond_61

    .line 463
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 464
    .local v3, "additionalSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 465
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v3    # "additionalSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 468
    .end local v2    # "i":I
    :cond_61
    new-instance v2, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v2, v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 470
    .end local v0    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v1    # "additionalSubtypeCount":I
    :goto_68
    iget v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    .line 471
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    .line 472
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    .line 473
    iget-boolean v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 474
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "settingsActivity"    # Ljava/lang/String;

    .line 504
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 514
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "settingsActivity"    # Ljava/lang/String;
    .param p5, "handledConfigChanges"    # I

    .line 583
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v12, p5

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 593
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "settingsActivity"    # Ljava/lang/String;
    .param p5, "languageSettingsActivity"    # Ljava/lang/String;
    .param p6, "supportStylusHandwriting"    # Z
    .param p7, "stylusHandwritingSettingsActivityAttr"    # Ljava/lang/String;

    .line 544
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v13, p6

    move-object/from16 v15, p7

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 552
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "settingsActivity"    # Ljava/lang/String;
    .param p5, "languageSettingsActivity"    # Ljava/lang/String;
    .param p6, "supportStylusHandwriting"    # Z
    .param p7, "supportConnectionlessStylusHandwriting"    # Z
    .param p8, "stylusHandwritingSettingsActivityAttr"    # Ljava/lang/String;

    .line 565
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 573
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "settingsActivity"    # Ljava/lang/String;
    .param p5, "supportStylusHandwriting"    # Z
    .param p6, "stylusHandwritingSettingsActivityAttr"    # Ljava/lang/String;

    .line 525
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v13, p5

    move-object/from16 v15, p6

    invoke-direct/range {v0 .. v16}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZZZZZIZZLjava/lang/String;Z)V

    .line 533
    return-void
.end method

.method private static blacklist buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 666
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 667
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/pm/ServiceInfo;

    invoke-direct {v1}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 668
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 669
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 670
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 671
    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 672
    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 673
    iput-object p0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 674
    iput-object p1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 675
    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 676
    iput-object p2, v1, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 677
    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 678
    return-object v0
.end method

.method public static greylist-max-o computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .registers 5
    .param p0, "service"    # Landroid/content/pm/ResolveInfo;

    .line 226
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 227
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist createImeLanguageSettingsActivityIntent()Landroid/content/Intent;
    .registers 5

    .line 896
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 897
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 898
    .local v0, "activityName":Ljava/lang/String;
    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 899
    const/4 v1, 0x0

    return-object v1

    .line 901
    :cond_15
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.inputmethod.action.IME_LANGUAGE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    .line 902
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public whitelist createStylusHandwritingSettingsActivityIntent()Landroid/content/Intent;
    .registers 5

    .line 868
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    if-nez v0, :cond_d

    goto :goto_26

    .line 873
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.inputmethod.action.STYLUS_HANDWRITING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    .line 874
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 870
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1064
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLanguageSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVrOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVirtualDeviceOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsSwitchingToNextInputMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInlineSuggestionsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsInlineSuggestionsWithTouchExploration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSuppressesSpellChecker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShowInInputMethodPicker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsStylusHandwriting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsConnectionlessStylusHandwriting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStylusHandwritingSettingsActivityAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsDefaultResId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 924
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "InputMethodSubtype array: count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 948
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    return v0

    .line 949
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 951
    :cond_8
    instance-of v1, p1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_d

    return v0

    .line 953
    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 954
    .local v0, "obj":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .registers 4

    .line 718
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getConfigChanges()I
    .registers 2

    .line 827
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 687
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIsDefaultResourceId()I
    .registers 2

    .line 796
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 694
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 710
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .registers 2

    .line 702
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 754
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3
    .param p1, "index"    # I

    .line 787
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->get(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubtypeCount()I
    .registers 2

    .line 778
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->getCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 959
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o isAuxiliaryIme()Z
    .registers 2

    .line 974
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    return v0
.end method

.method public greylist isDefault(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 805
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    if-eqz v0, :cond_6

    .line 806
    const/4 v0, 0x1

    return v0

    .line 809
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v1

    if-nez v1, :cond_e

    .line 810
    return v0

    .line 812
    :cond_e
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 813
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_22} :catch_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_22} :catch_23

    return v0

    .line 814
    .end local v1    # "res":Landroid/content/res/Resources;
    :catch_23
    move-exception v1

    .line 815
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public blacklist isInlineSuggestionsEnabled()Z
    .registers 2

    .line 990
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    return v0
.end method

.method public blacklist isSystem()Z
    .registers 3

    .line 967
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public whitelist isVirtualDeviceOnly()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 771
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    return v0
.end method

.method public greylist-max-o isVrOnly()Z
    .registers 2

    .line 762
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    return v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 739
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 729
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist shouldShowInInputMethodPicker()Z
    .registers 2

    .line 1015
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    return v0
.end method

.method public whitelist supportsConnectionlessStylusHandwriting()Z
    .registers 2

    .line 846
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    return v0
.end method

.method public blacklist supportsInlineSuggestionsWithTouchExploration()Z
    .registers 2

    .line 999
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    return v0
.end method

.method public whitelist supportsStylusHandwriting()Z
    .registers 2

    .line 836
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    return v0
.end method

.method public greylist-max-o supportsSwitchingToNextInputMethod()Z
    .registers 2

    .line 982
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    return v0
.end method

.method public whitelist suppressesSpellChecker()Z
    .registers 2

    .line 1006
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", languageSettings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1026
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mLanguageSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1029
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1035
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1036
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1037
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVirtualDeviceOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1038
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1039
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->writeToParcel(Landroid/os/Parcel;)V

    .line 1040
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1042
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsConnectionlessStylusHandwriting:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1043
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mStylusHandwritingSettingsActivityAttr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1044
    return-void
.end method
