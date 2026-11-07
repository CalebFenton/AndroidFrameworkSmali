.class public abstract Landroid/view/textclassifier/TextClassifierEvent;
.super Ljava/lang/Object;
.source "TextClassifierEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierEvent$Builder;,
        Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$Type;,
        Landroid/view/textclassifier/TextClassifierEvent$Category;
    }
.end annotation


# static fields
.field public static final whitelist CATEGORY_CONVERSATION_ACTIONS:I = 0x3

.field public static final whitelist CATEGORY_LANGUAGE_DETECTION:I = 0x4

.field public static final whitelist CATEGORY_LINKIFY:I = 0x2

.field public static final whitelist CATEGORY_SELECTION:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassifierEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PARCEL_TOKEN_CONVERSATION_ACTION_EVENT:I = 0x3

.field private static final blacklist PARCEL_TOKEN_LANGUAGE_DETECTION_EVENT:I = 0x4

.field private static final blacklist PARCEL_TOKEN_TEXT_LINKIFY_EVENT:I = 0x2

.field private static final blacklist PARCEL_TOKEN_TEXT_SELECTION_EVENT:I = 0x1

.field public static final whitelist TYPE_ACTIONS_GENERATED:I = 0x14

.field public static final whitelist TYPE_ACTIONS_SHOWN:I = 0x6

.field public static final whitelist TYPE_AUTO_SELECTION:I = 0x5

.field public static final whitelist TYPE_COPY_ACTION:I = 0x9

.field public static final whitelist TYPE_CUT_ACTION:I = 0xb

.field public static final whitelist TYPE_LINKS_GENERATED:I = 0x15

.field public static final whitelist TYPE_LINK_CLICKED:I = 0x7

.field public static final whitelist TYPE_MANUAL_REPLY:I = 0x13

.field public static final whitelist TYPE_OTHER_ACTION:I = 0x10

.field public static final whitelist TYPE_OVERTYPE:I = 0x8

.field public static final whitelist TYPE_PASTE_ACTION:I = 0xa

.field public static final blacklist TYPE_READ_CLIPBOARD:I = 0x16

.field public static final whitelist TYPE_SELECTION_DESTROYED:I = 0xf

.field public static final whitelist TYPE_SELECTION_DRAG:I = 0xe

.field public static final whitelist TYPE_SELECTION_MODIFIED:I = 0x2

.field public static final whitelist TYPE_SELECTION_RESET:I = 0x12

.field public static final whitelist TYPE_SELECTION_STARTED:I = 0x1

.field public static final whitelist TYPE_SELECT_ALL:I = 0x11

.field public static final whitelist TYPE_SHARE_ACTION:I = 0xc

.field public static final whitelist TYPE_SMART_ACTION:I = 0xd

.field public static final whitelist TYPE_SMART_SELECTION_MULTI:I = 0x4

.field public static final whitelist TYPE_SMART_SELECTION_SINGLE:I = 0x3


# instance fields
.field private final blacklist mActionIndices:[I

.field private final blacklist mEntityTypes:[Ljava/lang/String;

.field private final blacklist mEventCategory:I

.field private blacklist mEventContext:Landroid/view/textclassifier/TextClassificationContext;

.field private final blacklist mEventIndex:I

.field private final blacklist mEventType:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field public blacklist mHiddenTempSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private final blacklist mLocale:Landroid/icu/util/ULocale;

.field private final blacklist mModelName:Ljava/lang/String;

.field private final blacklist mResultId:Ljava/lang/String;

.field private final blacklist mScores:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 211
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierEvent$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifierEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    .line 192
    const-class v0, Landroid/view/textclassifier/TextClassificationContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .local v0, "scoresLength":I
    new-array v2, v0, [F

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    .line 197
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "languageTag":Ljava/lang/String;
    if-nez v2, :cond_4c

    goto :goto_50

    :cond_4c
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    :goto_50
    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    .line 203
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/view/textclassifier/TextClassifierEvent$Builder;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventCategory(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    .line 176
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventType(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    .line 177
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEntityTypes(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    .line 178
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventContext(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 179
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmResultId(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventIndex(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    .line 181
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmScores(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    .line 182
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmModelName(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    .line 183
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmActionIndices(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    .line 184
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmLocale(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    .line 185
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmExtras(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_48

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_4c

    :cond_48
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmExtras(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/os/Bundle;

    move-result-object v0

    :goto_4c
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    .line 186
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;)V

    return-void
.end method

.method private blacklist getParcelToken()I
    .registers 4

    .line 254
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    if-eqz v0, :cond_6

    .line 255
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_6
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    if-eqz v0, :cond_c

    .line 258
    const/4 v0, 0x2

    return v0

    .line 260
    :cond_c
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;

    if-eqz v0, :cond_12

    .line 261
    const/4 v0, 0x4

    return v0

    .line 263
    :cond_12
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent;

    if-eqz v0, :cond_18

    .line 264
    const/4 v0, 0x3

    return v0

    .line 266
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActionIndices()[I
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    return-object v0
.end method

.method public whitelist getEntityTypes()[Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEventCategory()I
    .registers 2

    .line 274
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    return v0
.end method

.method public whitelist getEventContext()Landroid/view/textclassifier/TextClassificationContext;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    return-object v0
.end method

.method public whitelist getEventIndex()I
    .registers 2

    .line 324
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    return v0
.end method

.method public whitelist getEventType()I
    .registers 2

    .line 282
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 371
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getLocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 361
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResultId()Ljava/lang/String;
    .registers 2

    .line 317
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScores()[F
    .registers 2

    .line 332
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    return-object v0
.end method

.method blacklist setEventContext(Landroid/view/textclassifier/TextClassificationContext;)V
    .registers 2
    .param p1, "eventContext"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 309
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 310
    return-void
.end method

.method public final blacklist toSelectionEvent()Landroid/view/textclassifier/SelectionEvent;
    .registers 11

    .line 410
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventCategory()I

    move-result v0

    packed-switch v0, :pswitch_data_ae

    .line 419
    const/4 v0, 0x0

    return-object v0

    .line 415
    :pswitch_9
    const/4 v0, 0x2

    .line 416
    .local v0, "invocationMethod":I
    goto :goto_d

    .line 412
    .end local v0    # "invocationMethod":I
    :pswitch_b
    const/4 v0, 0x1

    .line 413
    .restart local v0    # "invocationMethod":I
    nop

    .line 422
    :goto_d
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEntityTypes()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const-string v2, ""

    if-lez v1, :cond_1e

    .line 423
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEntityTypes()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    goto :goto_1f

    :cond_1e
    move-object v1, v2

    :goto_1f
    move-object v7, v1

    .line 424
    .local v7, "entityType":Ljava/lang/String;
    new-instance v3, Landroid/view/textclassifier/SelectionEvent;

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    .line 431
    .local v3, "out":Landroid/view/textclassifier/SelectionEvent;
    invoke-virtual {v3, v0}, Landroid/view/textclassifier/SelectionEvent;->setInvocationMethod(I)V

    .line 433
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v1

    .line 434
    .local v1, "eventContext":Landroid/view/textclassifier/TextClassificationContext;
    if-eqz v1, :cond_3b

    .line 435
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/textclassifier/SelectionEvent;->setTextClassificationSessionContext(Landroid/view/textclassifier/TextClassificationContext;)V

    .line 437
    :cond_3b
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierEvent;->mHiddenTempSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v3, v4}, Landroid/view/textclassifier/SelectionEvent;->setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;

    .line 438
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getResultId()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "resultId":Ljava/lang/String;
    if-nez v4, :cond_47

    goto :goto_48

    :cond_47
    move-object v2, v4

    :goto_48
    invoke-virtual {v3, v2}, Landroid/view/textclassifier/SelectionEvent;->setResultId(Ljava/lang/String;)Landroid/view/textclassifier/SelectionEvent;

    .line 440
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventIndex()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/textclassifier/SelectionEvent;->setEventIndex(I)Landroid/view/textclassifier/SelectionEvent;

    .line 444
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventType()I

    move-result v2

    packed-switch v2, :pswitch_data_b6

    .line 494
    :pswitch_59
    const/4 v2, 0x0

    .local v2, "eventType":I
    goto :goto_86

    .line 491
    .end local v2    # "eventType":I
    :pswitch_5b
    const/16 v2, 0xc9

    .line 492
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 488
    .end local v2    # "eventType":I
    :pswitch_5e
    const/16 v2, 0xc8

    .line 489
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 485
    .end local v2    # "eventType":I
    :pswitch_61
    const/16 v2, 0x6c

    .line 486
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 482
    .end local v2    # "eventType":I
    :pswitch_64
    const/16 v2, 0x6b

    .line 483
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 479
    .end local v2    # "eventType":I
    :pswitch_67
    const/16 v2, 0x6a

    .line 480
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 476
    .end local v2    # "eventType":I
    :pswitch_6a
    const/16 v2, 0x69

    .line 477
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 473
    .end local v2    # "eventType":I
    :pswitch_6d
    const/16 v2, 0x68

    .line 474
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 470
    .end local v2    # "eventType":I
    :pswitch_70
    const/16 v2, 0x67

    .line 471
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 467
    .end local v2    # "eventType":I
    :pswitch_73
    const/16 v2, 0x66

    .line 468
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 464
    .end local v2    # "eventType":I
    :pswitch_76
    const/16 v2, 0x65

    .line 465
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 461
    .end local v2    # "eventType":I
    :pswitch_79
    const/16 v2, 0x64

    .line 462
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 458
    .end local v2    # "eventType":I
    :pswitch_7c
    const/4 v2, 0x5

    .line 459
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 455
    .end local v2    # "eventType":I
    :pswitch_7e
    const/4 v2, 0x4

    .line 456
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 452
    .end local v2    # "eventType":I
    :pswitch_80
    const/4 v2, 0x3

    .line 453
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 449
    .end local v2    # "eventType":I
    :pswitch_82
    const/4 v2, 0x2

    .line 450
    .restart local v2    # "eventType":I
    goto :goto_86

    .line 446
    .end local v2    # "eventType":I
    :pswitch_84
    const/4 v2, 0x1

    .line 447
    .restart local v2    # "eventType":I
    nop

    .line 497
    :goto_86
    invoke-virtual {v3, v2}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    .line 499
    instance-of v5, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    if-eqz v5, :cond_ac

    .line 500
    move-object v5, p0

    check-cast v5, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    .line 506
    .local v5, "selEvent":Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;
    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeWordStartIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/textclassifier/SelectionEvent;->setStart(I)Landroid/view/textclassifier/SelectionEvent;

    .line 507
    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeWordEndIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/textclassifier/SelectionEvent;->setEnd(I)Landroid/view/textclassifier/SelectionEvent;

    .line 508
    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeSuggestedWordStartIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/textclassifier/SelectionEvent;->setSmartStart(I)Landroid/view/textclassifier/SelectionEvent;

    .line 509
    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeSuggestedWordEndIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/textclassifier/SelectionEvent;->setSmartEnd(I)Landroid/view/textclassifier/SelectionEvent;

    .line 512
    .end local v5    # "selEvent":Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;
    :cond_ac
    return-object v3

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_b
        :pswitch_9
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_84
        :pswitch_82
        :pswitch_80
        :pswitch_7e
        :pswitch_7c
        :pswitch_59
        :pswitch_59
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 377
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, "mEventCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, ", mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    const-string v1, ", mEntityTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v1, ", mEventContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, ", mResultId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v1, ", mEventIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    const-string v1, ", mScores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v1, ", mModelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v1, ", mActionIndices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0, v0}, Landroid/view/textclassifier/TextClassifierEvent;->toString(Ljava/lang/StringBuilder;)V

    .line 390
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist toString(Ljava/lang/StringBuilder;)V
    .registers 2
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .line 399
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 238
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getParcelToken()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 243
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 247
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 249
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    if-nez v0, :cond_40

    const/4 v0, 0x0

    goto :goto_46

    :cond_40
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    :goto_46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 251
    return-void
.end method
