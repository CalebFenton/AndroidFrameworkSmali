.class public Landroid/app/assist/AssistStructure$ViewNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# static fields
.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_HINTS:I = 0x10

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_OPTIONS:I = 0x20

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_SESSION_ID:I = 0x800

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_TYPE:I = 0x8

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_VALUE:I = 0x4

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_VIEW_ID:I = 0x1

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_VIRTUAL_VIEW_ID:I = 0x2

.field static final blacklist AUTOFILL_FLAGS_HAS_HINT_ID_ENTRY:I = 0x1000

.field static final blacklist AUTOFILL_FLAGS_HAS_HTML_INFO:I = 0x40

.field static final blacklist AUTOFILL_FLAGS_HAS_MAX_TEXT_EMS:I = 0x200

.field static final blacklist AUTOFILL_FLAGS_HAS_MAX_TEXT_LENGTH:I = 0x400

.field static final blacklist AUTOFILL_FLAGS_HAS_MIN_TEXT_EMS:I = 0x100

.field static final blacklist AUTOFILL_FLAGS_HAS_TEXT_ID_ENTRY:I = 0x80

.field static final greylist-max-o FLAGS_ACCESSIBILITY_FOCUSED:I = 0x1000

.field static final greylist-max-o FLAGS_ACTIVATED:I = 0x2000

.field static final greylist-max-o FLAGS_ALL_CONTROL:I = -0x10000

.field static final greylist-max-o FLAGS_ASSIST_BLOCKED:I = 0x80

.field static final greylist-max-o FLAGS_CHECKABLE:I = 0x100

.field static final greylist-max-o FLAGS_CHECKED:I = 0x200

.field static final greylist-max-o FLAGS_CLICKABLE:I = 0x400

.field static final greylist-max-o FLAGS_CONTEXT_CLICKABLE:I = 0x4000

.field static final greylist-max-o FLAGS_DISABLED:I = 0x1

.field static final greylist-max-o FLAGS_FOCUSABLE:I = 0x10

.field static final greylist-max-o FLAGS_FOCUSED:I = 0x20

.field static final greylist-max-o FLAGS_HAS_ALPHA:I = 0x20000000

.field static final greylist-max-o FLAGS_HAS_CHILDREN:I = 0x100000

.field static final greylist-max-o FLAGS_HAS_COMPLEX_TEXT:I = 0x800000

.field static final greylist-max-o FLAGS_HAS_CONTENT_DESCRIPTION:I = 0x2000000

.field static final greylist-max-o FLAGS_HAS_ELEVATION:I = 0x10000000

.field static final greylist-max-o FLAGS_HAS_EXTRAS:I = 0x400000

.field static final greylist-max-o FLAGS_HAS_ID:I = 0x200000

.field static final greylist-max-o FLAGS_HAS_INPUT_TYPE:I = 0x40000

.field static final greylist-max-o FLAGS_HAS_LARGE_COORDS:I = 0x4000000

.field static final greylist-max-o FLAGS_HAS_LOCALE_LIST:I = 0x10000

.field static final greylist-max-o FLAGS_HAS_MATRIX:I = 0x40000000

.field static final blacklist FLAGS_HAS_MIME_TYPES:I = -0x80000000

.field static final greylist-max-o FLAGS_HAS_SCROLL:I = 0x8000000

.field static final greylist-max-o FLAGS_HAS_TEXT:I = 0x1000000

.field static final blacklist FLAGS_HAS_URL_DOMAIN:I = 0x80000

.field static final blacklist FLAGS_HAS_URL_SCHEME:I = 0x20000

.field static final greylist-max-o FLAGS_LONG_CLICKABLE:I = 0x800

.field static final greylist-max-o FLAGS_OPAQUE:I = 0x8000

.field static final greylist-max-o FLAGS_SELECTED:I = 0x40

.field static final greylist-max-o FLAGS_VISIBILITY_MASK:I = 0xc

.field public static final whitelist TEXT_COLOR_UNDEFINED:I = 0x1

.field public static final whitelist TEXT_STYLE_BOLD:I = 0x1

.field public static final whitelist TEXT_STYLE_ITALIC:I = 0x2

.field public static final whitelist TEXT_STYLE_STRIKE_THRU:I = 0x8

.field public static final whitelist TEXT_STYLE_UNDERLINE:I = 0x4


# instance fields
.field greylist-max-o mAlpha:F

.field blacklist mAutofillFlags:I

.field greylist-max-o mAutofillHints:[Ljava/lang/String;

.field greylist-max-o mAutofillId:Landroid/view/autofill/AutofillId;

.field greylist-max-o mAutofillOptions:[Ljava/lang/CharSequence;

.field greylist-max-o mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

.field greylist-max-o mAutofillType:I

.field greylist-max-o mAutofillValue:Landroid/view/autofill/AutofillValue;

.field greylist-max-o mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

.field greylist-max-o mClassName:Ljava/lang/String;

.field greylist-max-o mContentDescription:Ljava/lang/CharSequence;

.field greylist-max-o mElevation:F

.field greylist-max-o mExtras:Landroid/os/Bundle;

.field greylist-max-o mFlags:I

.field blacklist mGetCredentialCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mGetCredentialRequest:Landroid/credentials/GetCredentialRequest;

.field blacklist mGetCredentialResultReceiver:Landroid/os/ResultReceiver;

.field greylist-max-o mHeight:I

.field blacklist mHintIdEntry:Ljava/lang/String;

.field greylist-max-o mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

.field greylist-max-o mId:I

.field greylist-max-o mIdEntry:Ljava/lang/String;

.field greylist-max-o mIdPackage:Ljava/lang/String;

.field greylist-max-o mIdType:Ljava/lang/String;

.field greylist-max-o mImportantForAutofill:I

.field greylist-max-o mInputType:I

.field blacklist mIsCredential:Z

.field greylist-max-o mLocaleList:Landroid/os/LocaleList;

.field greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field greylist-max-o mMaxEms:I

.field greylist-max-o mMaxLength:I

.field greylist-max-o mMinEms:I

.field blacklist mReceiveContentMimeTypes:[Ljava/lang/String;

.field greylist-max-o mSanitized:Z

.field greylist-max-o mScrollX:I

.field greylist-max-o mScrollY:I

.field greylist-max-o mText:Landroid/app/assist/AssistStructure$ViewNodeText;

.field greylist-max-o mTextIdEntry:Ljava/lang/String;

.field greylist-max-o mWebDomain:Ljava/lang/String;

.field greylist-max-o mWebScheme:Ljava/lang/String;

.field greylist-max-o mWidth:I

.field greylist-max-o mX:I

.field greylist-max-o mY:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 660
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 675
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 676
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 677
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 695
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 770
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V
    .registers 9
    .param p1, "reader"    # Landroid/app/assist/AssistStructure$ParcelTransferReader;
    .param p2, "nestingLevel"    # I

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 660
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 675
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 676
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 677
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 695
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 777
    const v0, 0x22222222

    invoke-virtual {p1, v0, p2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v0

    .line 778
    .local v0, "in":Landroid/os/Parcel;
    iget v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    .line 779
    iget-object v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PooledStringReader;

    iget-object v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    .line 780
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 779
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/assist/AssistStructure$ViewNode;->initializeFromParcelWithoutChildren(Landroid/os/Parcel;Landroid/os/PooledStringReader;[F)V

    .line 781
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_53

    .line 782
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 789
    .local v1, "numChildren":I
    new-array v2, v1, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    .line 790
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    if-ge v2, v1, :cond_53

    .line 791
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v4, Landroid/app/assist/AssistStructure$ViewNode;

    add-int/lit8 v5, p2, 0x1

    invoke-direct {v4, p1, v5}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    aput-object v4, v3, v2

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 794
    .end local v1    # "numChildren":I
    .end local v2    # "i":I
    :cond_53
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 660
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 675
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 676
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 677
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 695
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/app/assist/AssistStructure$ViewNode;->initializeFromParcelWithoutChildren(Landroid/os/Parcel;Landroid/os/PooledStringReader;[F)V

    .line 774
    return-void
.end method

.method private static blacklist readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "preader"    # Landroid/os/PooledStringReader;

    .line 807
    if-eqz p1, :cond_7

    .line 808
    invoke-virtual {p1}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 810
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V
    .registers 3
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p2, "str"    # Ljava/lang/String;

    .line 798
    if-eqz p1, :cond_6

    .line 799
    invoke-virtual {p1, p2}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 801
    :cond_6
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 803
    :goto_9
    return-void
.end method


# virtual methods
.method public whitelist getAlpha()F
    .registers 2

    .line 1430
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return v0
.end method

.method public whitelist getAutofillHints()[Ljava/lang/String;
    .registers 2

    .line 1249
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 1223
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getAutofillOptions()[Ljava/lang/CharSequence;
    .registers 2

    .line 1283
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getAutofillType()I
    .registers 2

    .line 1235
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    return v0
.end method

.method public whitelist getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 1262
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public whitelist getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 3
    .param p1, "index"    # I

    .line 1798
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist getChildCount()I
    .registers 2

    .line 1790
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .registers 2

    .line 1539
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1548
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getElevation()F
    .registers 2

    .line 1418
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1783
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 1394
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    return v0
.end method

.method public whitelist getHint()Ljava/lang/String;
    .registers 2

    .line 1764
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getHintIdEntry()Ljava/lang/String;
    .registers 2

    .line 1775
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;
    .registers 2

    .line 1612
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 1181
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    return v0
.end method

.method public whitelist getIdEntry()Ljava/lang/String;
    .registers 2

    .line 1211
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIdPackage()Ljava/lang/String;
    .registers 2

    .line 1191
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIdType()Ljava/lang/String;
    .registers 2

    .line 1201
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImportantForAutofill()I
    .registers 2

    .line 1842
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    return v0
.end method

.method public whitelist getInputType()I
    .registers 2

    .line 1326
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    return v0
.end method

.method public whitelist getLeft()I
    .registers 2

    .line 1357
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    return v0
.end method

.method public whitelist getLocaleList()Landroid/os/LocaleList;
    .registers 2

    .line 1619
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getMaxTextEms()I
    .registers 2

    .line 1820
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    return v0
.end method

.method public whitelist getMaxTextLength()I
    .registers 2

    .line 1832
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    return v0
.end method

.method public whitelist getMinTextEms()I
    .registers 2

    .line 1809
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    return v0
.end method

.method public blacklist getPendingCredentialCallback()Landroid/os/ResultReceiver;
    .registers 2

    .line 1317
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mGetCredentialResultReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public blacklist getPendingCredentialRequest()Landroid/credentials/GetCredentialRequest;
    .registers 2

    .line 1308
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mGetCredentialRequest:Landroid/credentials/GetCredentialRequest;

    return-object v0
.end method

.method public whitelist getReceiveContentMimeTypes()[Ljava/lang/String;
    .registers 2

    .line 1629
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScrollX()I
    .registers 2

    .line 1372
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    return v0
.end method

.method public whitelist getScrollY()I
    .registers 2

    .line 1380
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1642
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getTextBackgroundColor()I
    .registers 2

    .line 1688
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public whitelist getTextColor()I
    .registers 2

    .line 1674
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public whitelist getTextIdEntry()Ljava/lang/String;
    .registers 2

    .line 1755
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTextLineBaselines()[I
    .registers 2

    .line 1744
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getTextLineCharOffsets()[I
    .registers 2

    .line 1730
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getTextSelectionEnd()I
    .registers 2

    .line 1664
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public whitelist getTextSelectionStart()I
    .registers 2

    .line 1652
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public whitelist getTextSize()F
    .registers 2

    .line 1701
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist getTextStyle()I
    .registers 2

    .line 1716
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist getTop()I
    .registers 2

    .line 1364
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    return v0
.end method

.method public whitelist getTransformation()Landroid/graphics/Matrix;
    .registers 2

    .line 1406
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public whitelist getVisibility()I
    .registers 2

    .line 1438
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public whitelist getWebDomain()Ljava/lang/String;
    .registers 2

    .line 1565
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWebScheme()Ljava/lang/String;
    .registers 2

    .line 1599
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 1387
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    return v0
.end method

.method blacklist initializeFromParcelWithoutChildren(Landroid/os/Parcel;Landroid/os/PooledStringReader;[F)V
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "preader"    # Landroid/os/PooledStringReader;
    .param p3, "tmpMatrix"    # [F

    .line 816
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 818
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 819
    .local v0, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillFlags:I

    .line 820
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillFlags:I

    .line 821
    .local v1, "autofillFlags":I
    const/high16 v2, 0x200000

    and-int/2addr v2, v0

    if-eqz v2, :cond_3c

    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 823
    iget v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3c

    .line 824
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    .line 825
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v2, :cond_3c

    .line 826
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    .line 827
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    .line 832
    :cond_3c
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_f5

    .line 833
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_49

    move v5, v4

    goto :goto_4a

    :cond_49
    move v5, v3

    :goto_4a
    iput-boolean v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    .line 834
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_54

    move v5, v4

    goto :goto_55

    :cond_54
    move v5, v3

    :goto_55
    iput-boolean v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIsCredential:Z

    .line 835
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    .line 837
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_89

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 839
    .local v5, "autofillViewId":I
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_75

    .line 840
    new-instance v6, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-direct {v6, v5, v7}, Landroid/view/autofill/AutofillId;-><init>(II)V

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    goto :goto_7c

    .line 842
    :cond_75
    new-instance v6, Landroid/view/autofill/AutofillId;

    invoke-direct {v6, v5}, Landroid/view/autofill/AutofillId;-><init>(I)V

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 844
    :goto_7c
    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_89

    .line 845
    iget-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 848
    .end local v5    # "autofillViewId":I
    :cond_89
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_93

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 851
    :cond_93
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_9d

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    .line 854
    :cond_9d
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_ab

    .line 855
    const-class v5, Landroid/view/autofill/AutofillValue;

    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 857
    :cond_ab
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_b5

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    .line 860
    :cond_b5
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_c3

    .line 861
    const-class v5, Landroid/view/ViewStructure$HtmlInfo;

    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStructure$HtmlInfo;

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    .line 863
    :cond_c3
    and-int/lit16 v5, v1, 0x100

    if-eqz v5, :cond_cd

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 866
    :cond_cd
    and-int/lit16 v5, v1, 0x200

    if-eqz v5, :cond_d7

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 869
    :cond_d7
    and-int/lit16 v5, v1, 0x400

    if-eqz v5, :cond_e1

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 872
    :cond_e1
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_eb

    .line 873
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    .line 875
    :cond_eb
    and-int/lit16 v5, v1, 0x1000

    if-eqz v5, :cond_f5

    .line 876
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    .line 879
    :cond_f5
    const/high16 v5, 0x4000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_113

    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    goto :goto_12f

    .line 885
    :cond_113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 886
    .local v5, "val":I
    and-int/lit16 v6, v5, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 887
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 888
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 889
    and-int/lit16 v6, v5, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 890
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    .line 892
    .end local v5    # "val":I
    :goto_12f
    const/high16 v5, 0x8000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_140

    .line 893
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    .line 894
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    .line 896
    :cond_140
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, v0

    if-eqz v5, :cond_15a

    .line 897
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    .line 898
    if-nez p3, :cond_152

    .line 899
    const/16 v5, 0x9

    new-array p3, v5, [F

    .line 901
    :cond_152
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 902
    iget-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, p3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 904
    :cond_15a
    const/high16 v5, 0x10000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_165

    .line 905
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    .line 907
    :cond_165
    const/high16 v5, 0x20000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_170

    .line 908
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 910
    :cond_170
    const/high16 v5, 0x2000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_17f

    .line 911
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    .line 913
    :cond_17f
    const/high16 v5, 0x1000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_191

    .line 914
    new-instance v5, Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v6, 0x800000

    and-int/2addr v6, v0

    if-nez v6, :cond_18c

    move v3, v4

    :cond_18c
    invoke-direct {v5, p1, v3}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 916
    :cond_191
    const/high16 v3, 0x40000

    and-int/2addr v3, v0

    if-eqz v3, :cond_19c

    .line 917
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    .line 919
    :cond_19c
    const/high16 v3, 0x20000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1a7

    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    .line 922
    :cond_1a7
    const/high16 v3, 0x80000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1b2

    .line 923
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    .line 925
    :cond_1b2
    const/high16 v3, 0x10000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1c1

    .line 926
    const-class v3, Landroid/os/LocaleList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/LocaleList;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    .line 928
    :cond_1c1
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1cc

    .line 929
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    .line 931
    :cond_1cc
    const/high16 v2, 0x400000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1d7

    .line 932
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    .line 934
    :cond_1d7
    sget-object v2, Landroid/credentials/GetCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/GetCredentialRequest;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mGetCredentialRequest:Landroid/credentials/GetCredentialRequest;

    .line 935
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mGetCredentialResultReceiver:Landroid/os/ResultReceiver;

    .line 936
    return-void
.end method

.method public whitelist isAccessibilityFocused()Z
    .registers 2

    .line 1482
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isActivated()Z
    .registers 2

    .line 1510
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isAssistBlocked()Z
    .registers 2

    .line 1445
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isCheckable()Z
    .registers 2

    .line 1489
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isChecked()Z
    .registers 2

    .line 1496
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isClickable()Z
    .registers 2

    .line 1459
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isContextClickable()Z
    .registers 2

    .line 1529
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isCredential()Z
    .registers 2

    .line 1296
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIsCredential:Z

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 3

    .line 1452
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist isFocusable()Z
    .registers 2

    .line 1466
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isFocused()Z
    .registers 2

    .line 1474
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isLongClickable()Z
    .registers 2

    .line 1522
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isOpaque()Z
    .registers 3

    .line 1516
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o isSanitized()Z
    .registers 2

    .line 1331
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    return v0
.end method

.method public whitelist isSelected()Z
    .registers 2

    .line 1503
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V
    .registers 2
    .param p1, "overlay"    # Landroid/app/assist/AssistStructure$AutofillOverlay;

    .line 1267
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    .line 1268
    return-void
.end method

.method public greylist-max-o setWebDomain(Ljava/lang/String;)V
    .registers 5
    .param p1, "domain"    # Ljava/lang/String;

    .line 1572
    if-nez p1, :cond_3

    return-void

    .line 1574
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1575
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_11

    .line 1577
    const-string v1, "AssistStructure"

    const-string v2, "Failed to parse web domain"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    return-void

    .line 1581
    :cond_11
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    .line 1582
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    if-nez v1, :cond_33

    .line 1583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1586
    :cond_33
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    .line 1587
    return-void
.end method

.method public greylist-max-o updateAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .registers 4
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 1344
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 1345
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1346
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-nez v0, :cond_13

    .line 1347
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 1349
    :cond_13
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 1351
    :cond_1b
    return-void
.end method

.method blacklist writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[FZ)I
    .registers 32
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p3, "sanitizeOnWrite"    # Z
    .param p4, "tmpMatrix"    # [F
    .param p5, "willWriteChildren"    # Z

    .line 947
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 949
    .local v3, "writeSensitive":Z
    iget v4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 950
    .local v4, "flags":I
    const/4 v5, 0x0

    .line 952
    .local v5, "autofillFlags":I
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/high16 v7, 0x200000

    const/4 v8, -0x1

    if-eq v6, v8, :cond_16

    .line 953
    or-int/2addr v4, v7

    .line 955
    :cond_16
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    and-int/lit16 v6, v6, -0x8000

    const/high16 v9, 0x4000000

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v6, :cond_3b

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    and-int/lit16 v6, v6, -0x8000

    if-nez v6, :cond_3b

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    and-int/lit16 v6, v6, -0x8000

    if-eqz v6, :cond_2e

    move v6, v10

    goto :goto_2f

    :cond_2e
    move v6, v11

    :goto_2f
    iget v12, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    and-int/lit16 v12, v12, -0x8000

    if-eqz v12, :cond_37

    move v12, v10

    goto :goto_38

    :cond_37
    move v12, v11

    :goto_38
    or-int/2addr v6, v12

    if-eqz v6, :cond_3c

    .line 957
    :cond_3b
    or-int/2addr v4, v9

    .line 959
    :cond_3c
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    const/high16 v12, 0x8000000

    if-nez v6, :cond_46

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    if-eqz v6, :cond_47

    .line 960
    :cond_46
    or-int/2addr v4, v12

    .line 962
    :cond_47
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v6, :cond_4e

    .line 963
    or-int/2addr v4, v13

    .line 965
    :cond_4e
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    const/4 v14, 0x0

    cmpl-float v6, v6, v14

    const/high16 v14, 0x10000000

    if-eqz v6, :cond_58

    .line 966
    or-int/2addr v4, v14

    .line 968
    :cond_58
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v15

    const/high16 v15, 0x20000000

    if-eqz v6, :cond_63

    .line 969
    or-int/2addr v4, v15

    .line 971
    :cond_63
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    const/high16 v16, 0x2000000

    if-eqz v6, :cond_6b

    .line 972
    or-int v4, v4, v16

    .line 974
    :cond_6b
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v17, 0x800000

    const/high16 v18, 0x1000000

    if-eqz v6, :cond_7f

    .line 975
    or-int v4, v4, v18

    .line 976
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {v6}, Landroid/app/assist/AssistStructure$ViewNodeText;->isSimple()Z

    move-result v6

    if-nez v6, :cond_7f

    .line 977
    or-int v4, v4, v17

    .line 980
    :cond_7f
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    const/high16 v19, 0x40000

    if-eqz v6, :cond_87

    .line 981
    or-int v4, v4, v19

    .line 983
    :cond_87
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    const/high16 v20, 0x20000

    if-eqz v6, :cond_8f

    .line 984
    or-int v4, v4, v20

    .line 986
    :cond_8f
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    const/high16 v21, 0x80000

    if-eqz v6, :cond_97

    .line 987
    or-int v4, v4, v21

    .line 989
    :cond_97
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    const/high16 v22, 0x10000

    if-eqz v6, :cond_9f

    .line 990
    or-int v4, v4, v22

    .line 992
    :cond_9f
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    const/high16 v23, -0x80000000

    if-eqz v6, :cond_a7

    .line 993
    or-int v4, v4, v23

    .line 995
    :cond_a7
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    const/high16 v24, 0x400000

    if-eqz v6, :cond_af

    .line 996
    or-int v4, v4, v24

    .line 998
    :cond_af
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v6, :cond_b8

    if-eqz p5, :cond_b8

    .line 999
    const/high16 v6, 0x100000

    or-int/2addr v4, v6

    .line 1001
    :cond_b8
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    if-eqz v6, :cond_d2

    .line 1002
    or-int/lit8 v5, v5, 0x1

    .line 1003
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 1004
    or-int/lit8 v5, v5, 0x2

    .line 1006
    :cond_c8
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 1007
    or-int/lit16 v5, v5, 0x800

    .line 1010
    :cond_d2
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    if-eqz v6, :cond_d8

    .line 1011
    or-int/lit8 v5, v5, 0x4

    .line 1013
    :cond_d8
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    if-eqz v6, :cond_de

    .line 1014
    or-int/lit8 v5, v5, 0x8

    .line 1016
    :cond_de
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    if-eqz v6, :cond_e4

    .line 1017
    or-int/lit8 v5, v5, 0x10

    .line 1019
    :cond_e4
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_ea

    .line 1020
    or-int/lit8 v5, v5, 0x20

    .line 1022
    :cond_ea
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    instance-of v6, v6, Landroid/os/Parcelable;

    if-eqz v6, :cond_f2

    .line 1023
    or-int/lit8 v5, v5, 0x40

    .line 1025
    :cond_f2
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    if-le v6, v8, :cond_f8

    .line 1026
    or-int/lit16 v5, v5, 0x100

    .line 1028
    :cond_f8
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    if-le v6, v8, :cond_fe

    .line 1029
    or-int/lit16 v5, v5, 0x200

    .line 1031
    :cond_fe
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    if-le v6, v8, :cond_104

    .line 1032
    or-int/lit16 v5, v5, 0x400

    .line 1034
    :cond_104
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    if-eqz v6, :cond_10a

    .line 1035
    or-int/lit16 v5, v5, 0x80

    .line 1037
    :cond_10a
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    if-eqz v6, :cond_110

    .line 1038
    or-int/lit16 v5, v5, 0x1000

    .line 1041
    :cond_110
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1043
    move v6, v4

    .line 1044
    .local v6, "writtenFlags":I
    if-eqz v5, :cond_123

    move/from16 v25, v7

    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v7, :cond_120

    if-nez p3, :cond_125

    .line 1046
    :cond_120
    and-int/lit16 v6, v4, -0x201

    goto :goto_125

    .line 1044
    :cond_123
    move/from16 v25, v7

    .line 1048
    :cond_125
    :goto_125
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v7, :cond_134

    .line 1049
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-boolean v7, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v7, :cond_132

    .line 1050
    or-int/lit8 v6, v6, 0x20

    goto :goto_134

    .line 1052
    :cond_132
    and-int/lit8 v6, v6, -0x21

    .line 1056
    :cond_134
    :goto_134
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    and-int v7, v4, v25

    if-eqz v7, :cond_15a

    .line 1059
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eq v7, v8, :cond_15a

    .line 1061
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1062
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v7, :cond_15a

    .line 1063
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1064
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1069
    :cond_15a
    if-eqz v5, :cond_20c

    .line 1070
    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIsCredential:Z

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v7, :cond_174

    if-nez p3, :cond_172

    goto :goto_174

    :cond_172
    move v7, v11

    goto :goto_175

    :cond_174
    :goto_174
    move v7, v10

    :goto_175
    move v3, v7

    .line 1074
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_19d

    .line 1075
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_190

    .line 1077
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    :cond_190
    and-int/lit16 v7, v5, 0x800

    if-eqz v7, :cond_19d

    .line 1080
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getSessionId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    :cond_19d
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_1a6

    .line 1084
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    :cond_1a6
    and-int/lit8 v7, v5, 0x10

    if-eqz v7, :cond_1af

    .line 1087
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1089
    :cond_1af
    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_1cb

    .line 1091
    if-eqz v3, :cond_1b8

    .line 1092
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .local v7, "sanitizedValue":Landroid/view/autofill/AutofillValue;
    goto :goto_1c8

    .line 1093
    .end local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_1b8
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v7, :cond_1c7

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v7, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    if-eqz v7, :cond_1c7

    .line 1094
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v7, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .restart local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    goto :goto_1c8

    .line 1096
    .end local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_1c7
    const/4 v7, 0x0

    .line 1098
    .restart local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :goto_1c8
    invoke-virtual {v1, v7, v11}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1100
    .end local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_1cb
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_1d4

    .line 1101
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 1103
    :cond_1d4
    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_1df

    .line 1104
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {v1, v7, v11}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1106
    :cond_1df
    and-int/lit16 v7, v5, 0x100

    if-eqz v7, :cond_1e8

    .line 1107
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    :cond_1e8
    and-int/lit16 v7, v5, 0x200

    if-eqz v7, :cond_1f1

    .line 1110
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    :cond_1f1
    and-int/lit16 v7, v5, 0x400

    if-eqz v7, :cond_1fa

    .line 1113
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    :cond_1fa
    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_203

    .line 1116
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1118
    :cond_203
    and-int/lit16 v7, v5, 0x1000

    if-eqz v7, :cond_20c

    .line 1119
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1122
    :cond_20c
    and-int v7, v4, v9

    if-eqz v7, :cond_225

    .line 1123
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_239

    .line 1128
    :cond_225
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    :goto_239
    and-int v7, v4, v12

    if-eqz v7, :cond_247

    .line 1132
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    :cond_247
    and-int v7, v4, v13

    if-eqz v7, :cond_25d

    .line 1136
    if-nez p4, :cond_252

    .line 1137
    const/16 v7, 0x9

    new-array v7, v7, [F

    .end local p4    # "tmpMatrix":[F
    .local v7, "tmpMatrix":[F
    goto :goto_254

    .line 1136
    .end local v7    # "tmpMatrix":[F
    .restart local p4    # "tmpMatrix":[F
    :cond_252
    move-object/from16 v7, p4

    .line 1139
    .end local p4    # "tmpMatrix":[F
    .restart local v7    # "tmpMatrix":[F
    :goto_254
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1140
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_25f

    .line 1135
    .end local v7    # "tmpMatrix":[F
    .restart local p4    # "tmpMatrix":[F
    :cond_25d
    move-object/from16 v7, p4

    .line 1142
    .end local p4    # "tmpMatrix":[F
    .restart local v7    # "tmpMatrix":[F
    :goto_25f
    and-int v8, v4, v14

    if-eqz v8, :cond_268

    .line 1143
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1145
    :cond_268
    and-int v8, v4, v15

    if-eqz v8, :cond_271

    .line 1146
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1148
    :cond_271
    and-int v8, v4, v16

    if-eqz v8, :cond_27a

    .line 1149
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v8, v1, v11}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1151
    :cond_27a
    and-int v8, v4, v18

    if-eqz v8, :cond_289

    .line 1152
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    and-int v9, v4, v17

    if-nez v9, :cond_285

    goto :goto_286

    :cond_285
    move v10, v11

    :goto_286
    invoke-virtual {v8, v1, v10, v3}, Landroid/app/assist/AssistStructure$ViewNodeText;->writeToParcel(Landroid/os/Parcel;ZZ)V

    .line 1154
    :cond_289
    and-int v8, v4, v19

    if-eqz v8, :cond_292

    .line 1155
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    :cond_292
    and-int v8, v4, v20

    if-eqz v8, :cond_29b

    .line 1158
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1160
    :cond_29b
    and-int v8, v4, v21

    if-eqz v8, :cond_2a4

    .line 1161
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1163
    :cond_2a4
    and-int v8, v4, v22

    if-eqz v8, :cond_2ad

    .line 1164
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v8, v11}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1166
    :cond_2ad
    and-int v8, v4, v23

    if-eqz v8, :cond_2b6

    .line 1167
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1169
    :cond_2b6
    and-int v8, v4, v24

    if-eqz v8, :cond_2bf

    .line 1170
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1172
    :cond_2bf
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mGetCredentialRequest:Landroid/credentials/GetCredentialRequest;

    invoke-virtual {v1, v8, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1173
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mGetCredentialResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v1, v8, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1174
    return v4
.end method
