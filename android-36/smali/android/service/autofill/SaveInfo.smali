.class public final Landroid/service/autofill/SaveInfo;
.super Ljava/lang/Object;
.source "SaveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/SaveInfo$Builder;,
        Landroid/service/autofill/SaveInfo$SaveInfoFlags;,
        Landroid/service/autofill/SaveInfo$SaveDataType;,
        Landroid/service/autofill/SaveInfo$PositiveButtonStyle;,
        Landroid/service/autofill/SaveInfo$NegativeButtonStyle;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/SaveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_DELAY_SAVE:I = 0x4

.field public static final whitelist FLAG_DONT_SAVE_ON_FINISH:I = 0x2

.field public static final whitelist FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE:I = 0x1

.field public static final whitelist NEGATIVE_BUTTON_STYLE_CANCEL:I = 0x0

.field public static final whitelist NEGATIVE_BUTTON_STYLE_NEVER:I = 0x2

.field public static final whitelist NEGATIVE_BUTTON_STYLE_REJECT:I = 0x1

.field public static final whitelist POSITIVE_BUTTON_STYLE_CONTINUE:I = 0x1

.field public static final whitelist POSITIVE_BUTTON_STYLE_SAVE:I = 0x0

.field public static final whitelist SAVE_DATA_TYPE_ADDRESS:I = 0x2

.field public static final whitelist SAVE_DATA_TYPE_CREDIT_CARD:I = 0x4

.field public static final whitelist SAVE_DATA_TYPE_DEBIT_CARD:I = 0x20

.field public static final whitelist SAVE_DATA_TYPE_EMAIL_ADDRESS:I = 0x10

.field public static final whitelist SAVE_DATA_TYPE_GENERIC:I = 0x0

.field public static final whitelist SAVE_DATA_TYPE_GENERIC_CARD:I = 0x80

.field public static final whitelist SAVE_DATA_TYPE_PASSWORD:I = 0x1

.field public static final whitelist SAVE_DATA_TYPE_PAYMENT_CARD:I = 0x40

.field public static final whitelist SAVE_DATA_TYPE_USERNAME:I = 0x8


# instance fields
.field private final greylist-max-o mCustomDescription:Landroid/service/autofill/CustomDescription;

.field private final greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mNegativeActionListener:Landroid/content/IntentSender;

.field private final greylist-max-o mNegativeButtonStyle:I

.field private final greylist-max-o mOptionalIds:[Landroid/view/autofill/AutofillId;

.field private final blacklist mPositiveButtonStyle:I

.field private final greylist-max-o mRequiredIds:[Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

.field private final greylist-max-o mSanitizerValues:[[Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mTriggerId:Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mType:I

.field private final greylist-max-o mValidator:Landroid/service/autofill/InternalValidator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 903
    new-instance v0, Landroid/service/autofill/SaveInfo$1;

    invoke-direct {v0}, Landroid/service/autofill/SaveInfo$1;-><init>()V

    sput-object v0, Landroid/service/autofill/SaveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIILandroid/content/IntentSender;[Landroid/view/autofill/AutofillId;[Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;ILandroid/service/autofill/CustomDescription;Landroid/service/autofill/InternalValidator;[Landroid/service/autofill/InternalSanitizer;[[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "negativeButtonStyle"    # I
    .param p3, "positiveButtonStyle"    # I
    .param p4, "negativeActionListener"    # Landroid/content/IntentSender;
    .param p5, "requiredIds"    # [Landroid/view/autofill/AutofillId;
    .param p6, "optionalIds"    # [Landroid/view/autofill/AutofillId;
    .param p7, "description"    # Ljava/lang/CharSequence;
    .param p8, "flags"    # I
    .param p9, "customDescription"    # Landroid/service/autofill/CustomDescription;
    .param p10, "validator"    # Landroid/service/autofill/InternalValidator;
    .param p11, "sanitizerKeys"    # [Landroid/service/autofill/InternalSanitizer;
    .param p12, "sanitizerValues"    # [[Landroid/view/autofill/AutofillId;
    .param p13, "triggerId"    # Landroid/view/autofill/AutofillId;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput p1, p0, Landroid/service/autofill/SaveInfo;->mType:I

    .line 356
    iput p2, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    .line 357
    iput-object p4, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    .line 358
    iput p3, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    .line 359
    iput-object p5, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 360
    iput-object p6, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    .line 361
    iput-object p7, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    .line 362
    iput p8, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    .line 363
    iput-object p9, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    .line 364
    iput-object p10, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    .line 365
    iput-object p11, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    .line 366
    iput-object p12, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    .line 367
    iput-object p13, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    .line 368
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/service/autofill/SaveInfo$Builder;)V
    .registers 6
    .param p1, "builder"    # Landroid/service/autofill/SaveInfo$Builder;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmType(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    .line 372
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmNegativeButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    .line 373
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmNegativeActionListener(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    .line 374
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmPositiveButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    .line 375
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmRequiredIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 376
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmOptionalIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    .line 377
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmDescription(Landroid/service/autofill/SaveInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    .line 378
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmFlags(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    .line 379
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmCustomDescription(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/CustomDescription;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    .line 380
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmValidator(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/InternalValidator;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    .line 381
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    .line 383
    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    goto :goto_7d

    .line 385
    :cond_4b
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 386
    .local v0, "size":I
    new-array v1, v0, [Landroid/service/autofill/InternalSanitizer;

    iput-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    .line 387
    new-array v1, v0, [[Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    .line 388
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5c
    if-ge v1, v0, :cond_7d

    .line 389
    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/InternalSanitizer;

    aput-object v3, v2, v1

    .line 390
    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/autofill/AutofillId;

    aput-object v3, v2, v1

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 393
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_7d
    :goto_7d
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmTriggerId(Landroid/service/autofill/SaveInfo$Builder;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    .line 394
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/SaveInfo$Builder;Landroid/service/autofill/SaveInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/SaveInfo;-><init>(Landroid/service/autofill/SaveInfo$Builder;)V

    return-void
.end method

.method public static blacklist copy(Landroid/service/autofill/SaveInfo;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo;
    .registers 16
    .param p0, "s"    # Landroid/service/autofill/SaveInfo;
    .param p1, "optionalIds"    # [Landroid/view/autofill/AutofillId;

    .line 343
    new-instance v0, Landroid/service/autofill/SaveInfo;

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mType:I

    iget v2, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    iget v3, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    iget-object v4, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    iget-object v5, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 344
    invoke-static {p1}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v6

    iget-object v7, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    iget v8, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    iget-object v9, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    iget-object v10, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    iget-object v11, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    iget-object v12, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    iget-object v13, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    invoke-direct/range {v0 .. v13}, Landroid/service/autofill/SaveInfo;-><init>(IIILandroid/content/IntentSender;[Landroid/view/autofill/AutofillId;[Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;ILandroid/service/autofill/CustomDescription;Landroid/service/autofill/InternalValidator;[Landroid/service/autofill/InternalSanitizer;[[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    .line 343
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 879
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCustomDescription()Landroid/service/autofill/CustomDescription;
    .registers 2

    .line 439
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    return-object v0
.end method

.method public greylist-max-o getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 433
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .registers 2

    .line 428
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    return v0
.end method

.method public greylist-max-o getNegativeActionListener()Landroid/content/IntentSender;
    .registers 2

    .line 403
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method public greylist-max-o getNegativeActionStyle()I
    .registers 2

    .line 398
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    return v0
.end method

.method public greylist-max-o getOptionalIds()[Landroid/view/autofill/AutofillId;
    .registers 2

    .line 418
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public blacklist getPositiveActionStyle()I
    .registers 2

    .line 408
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    return v0
.end method

.method public greylist-max-o getRequiredIds()[Landroid/view/autofill/AutofillId;
    .registers 2

    .line 413
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public greylist-max-o getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;
    .registers 2

    .line 451
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    return-object v0
.end method

.method public greylist-max-o getSanitizerValues()[[Landroid/view/autofill/AutofillId;
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public greylist-max-o getTriggerId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public greylist-max-o getType()I
    .registers 2

    .line 423
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    return v0
.end method

.method public greylist-max-o getValidator()Landroid/service/autofill/InternalValidator;
    .registers 2

    .line 445
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 836
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 838
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SaveInfo: [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mType:I

    int-to-long v1, v1

    .line 839
    const-class v3, Landroid/service/autofill/SaveInfo;

    const-string v4, "SAVE_DATA_TYPE_"

    invoke-static {v3, v4, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 840
    const-string v1, ", requiredIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 841
    const-string v1, ", negative style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    int-to-long v1, v1

    const-string v4, "NEGATIVE_BUTTON_STYLE_"

    invoke-static {v3, v4, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 843
    const-string v1, ", positive style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    int-to-long v1, v1

    const-string v4, "POSITIVE_BUTTON_STYLE_"

    invoke-static {v3, v4, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 845
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_68

    .line 846
    const-string v1, ", optionalIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :cond_68
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_77

    .line 849
    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 851
    :cond_77
    iget v1, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    if-eqz v1, :cond_86

    .line 852
    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 854
    :cond_86
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    if-eqz v1, :cond_95

    .line 855
    const-string v1, ", customDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 857
    :cond_95
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    if-eqz v1, :cond_a4

    .line 858
    const-string v1, ", validator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 860
    :cond_a4
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    if-eqz v1, :cond_b4

    .line 861
    const-string v1, ", sanitizerKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 863
    :cond_b4
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_c4

    .line 864
    const-string v1, ", sanitizerValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 866
    :cond_c4
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_d3

    .line 867
    const-string v1, ", triggerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 870
    :cond_d3
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 884
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 886
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 887
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 889
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 891
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 892
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 893
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 894
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    if-eqz v0, :cond_46

    .line 895
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_37
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    array-length v1, v1

    if-ge v0, v1, :cond_46

    .line 896
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 895
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 899
    .end local v0    # "i":I
    :cond_46
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 900
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    return-void
.end method
