.class public interface abstract Landroid/view/textclassifier/TextClassifier;
.super Ljava/lang/Object;
.source "TextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifier$Utils;,
        Landroid/view/textclassifier/TextClassifier$EntityConfig;,
        Landroid/view/textclassifier/TextClassifier$WidgetType;,
        Landroid/view/textclassifier/TextClassifier$Hints;,
        Landroid/view/textclassifier/TextClassifier$EntityType;,
        Landroid/view/textclassifier/TextClassifier$TextClassifierType;
    }
.end annotation


# static fields
.field public static final whitelist CLASSIFIER_TYPE_ANDROID_DEFAULT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CLASSIFIER_TYPE_DEVICE_DEFAULT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CLASSIFIER_TYPE_SELF_PROVIDED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DEFAULT_SYSTEM:I = 0x2

.field public static final whitelist EXTRA_FROM_TEXT_CLASSIFIER:Ljava/lang/String; = "android.view.textclassifier.extra.FROM_TEXT_CLASSIFIER"

.field public static final whitelist EXTRA_TEXT_ORIGIN_PACKAGE:Ljava/lang/String; = "android.view.textclassifier.extra.TEXT_ORIGIN_PACKAGE"

.field public static final whitelist HINT_TEXT_IS_EDITABLE:Ljava/lang/String; = "android.text_is_editable"

.field public static final whitelist HINT_TEXT_IS_NOT_EDITABLE:Ljava/lang/String; = "android.text_is_not_editable"

.field public static final greylist-max-o LOCAL:I = 0x0

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "androidtc"

.field public static final whitelist NO_OP:Landroid/view/textclassifier/TextClassifier;

.field public static final greylist-max-o SYSTEM:I = 0x1

.field public static final whitelist TYPE_ADDRESS:Ljava/lang/String; = "address"

.field public static final whitelist TYPE_DATE:Ljava/lang/String; = "date"

.field public static final whitelist TYPE_DATE_TIME:Ljava/lang/String; = "datetime"

.field public static final blacklist TYPE_DICTIONARY:Ljava/lang/String; = "dictionary"

.field public static final whitelist TYPE_EMAIL:Ljava/lang/String; = "email"

.field public static final whitelist TYPE_FLIGHT_NUMBER:Ljava/lang/String; = "flight"

.field public static final whitelist TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final whitelist TYPE_OTP:Ljava/lang/String; = "otp"

.field public static final whitelist TYPE_PHONE:Ljava/lang/String; = "phone"

.field public static final whitelist TYPE_UNKNOWN:Ljava/lang/String; = ""

.field public static final whitelist TYPE_URL:Ljava/lang/String; = "url"

.field public static final whitelist WIDGET_TYPE_CLIPBOARD:Ljava/lang/String; = "clipboard"

.field public static final whitelist WIDGET_TYPE_CUSTOM_EDITTEXT:Ljava/lang/String; = "customedit"

.field public static final whitelist WIDGET_TYPE_CUSTOM_TEXTVIEW:Ljava/lang/String; = "customview"

.field public static final whitelist WIDGET_TYPE_CUSTOM_UNSELECTABLE_TEXTVIEW:Ljava/lang/String; = "nosel-customview"

.field public static final whitelist WIDGET_TYPE_EDITTEXT:Ljava/lang/String; = "edittext"

.field public static final whitelist WIDGET_TYPE_EDIT_WEBVIEW:Ljava/lang/String; = "edit-webview"

.field public static final whitelist WIDGET_TYPE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final whitelist WIDGET_TYPE_TEXTVIEW:Ljava/lang/String; = "textview"

.field public static final whitelist WIDGET_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final whitelist WIDGET_TYPE_UNSELECTABLE_TEXTVIEW:Ljava/lang/String; = "nosel-textview"

.field public static final whitelist WIDGET_TYPE_WEBVIEW:Ljava/lang/String; = "webview"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 212
    new-instance v0, Landroid/view/textclassifier/TextClassifier$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 103
    move v0, p0

    .line 104
    .local v0, "unflaggedType":I
    packed-switch v0, :pswitch_data_10

    .line 112
    const-string v1, "Unknown"

    return-object v1

    .line 110
    :pswitch_7
    const-string v1, "Default system"

    return-object v1

    .line 108
    :pswitch_a
    const-string v1, "System"

    return-object v1

    .line 106
    :pswitch_d
    const-string v1, "Local"

    return-object v1

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public whitelist classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .registers 3
    .param p1, "request"    # Landroid/view/textclassifier/TextClassification$Request;

    .line 311
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 313
    sget-object v0, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public whitelist classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "defaultLocales"    # Landroid/os/LocaleList;

    .line 349
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 351
    invoke-virtual {v0, p4}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    .line 353
    .local v0, "request":Landroid/view/textclassifier/TextClassification$Request;
    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    return-object v1
.end method

.method public whitelist destroy()V
    .registers 1

    .line 452
    return-void
.end method

.method public whitelist detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .registers 3
    .param p1, "request"    # Landroid/view/textclassifier/TextLanguage$Request;

    .line 405
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 407
    sget-object v0, Landroid/view/textclassifier/TextLanguage;->EMPTY:Landroid/view/textclassifier/TextLanguage;

    return-object v0
.end method

.method public blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2
    .param p1, "printWriter"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 468
    return-void
.end method

.method public whitelist generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .registers 4
    .param p1, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    .line 372
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 374
    new-instance v0, Landroid/view/textclassifier/TextLinks$Builder;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextLinks$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Builder;->build()Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMaxGenerateLinksTextLength()I
    .registers 2

    .line 387
    const v0, 0x7fffffff

    return v0
.end method

.method public whitelist isDestroyed()Z
    .registers 2

    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 432
    return-void
.end method

.method public whitelist onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/textclassifier/TextClassifierEvent;

    .line 442
    return-void
.end method

.method public whitelist suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .registers 5
    .param p1, "request"    # Landroid/view/textclassifier/ConversationActions$Request;

    .line 417
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 419
    new-instance v0, Landroid/view/textclassifier/ConversationActions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/ConversationActions;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .registers 5
    .param p1, "request"    # Landroid/view/textclassifier/TextSelection$Request;

    .line 252
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 254
    new-instance v0, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStartIndex"    # I
    .param p3, "selectionEndIndex"    # I
    .param p4, "defaultLocales"    # Landroid/os/LocaleList;

    .line 290
    new-instance v0, Landroid/view/textclassifier/TextSelection$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 292
    invoke-virtual {v0, p4}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v0

    .line 294
    .local v0, "request":Landroid/view/textclassifier/TextSelection$Request;
    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v1

    return-object v1
.end method
