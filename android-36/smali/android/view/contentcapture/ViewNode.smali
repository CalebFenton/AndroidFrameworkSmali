.class public final Landroid/view/contentcapture/ViewNode;
.super Landroid/app/assist/AssistStructure$ViewNode;
.source "ViewNode.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ViewNode$ViewNodeText;,
        Landroid/view/contentcapture/ViewNode$ViewStructureImpl;
    }
.end annotation


# static fields
.field private static final blacklist FLAGS_ACCESSIBILITY_FOCUSED:J = 0x20000L

.field private static final blacklist FLAGS_ACTIVATED:J = 0x200000L

.field private static final blacklist FLAGS_ASSIST_BLOCKED:J = 0x400L

.field private static final blacklist FLAGS_CHECKABLE:J = 0x40000L

.field private static final blacklist FLAGS_CHECKED:J = 0x80000L

.field private static final blacklist FLAGS_CLICKABLE:J = 0x1000L

.field private static final blacklist FLAGS_CONTEXT_CLICKABLE:J = 0x4000L

.field private static final blacklist FLAGS_DISABLED:J = 0x800L

.field private static final blacklist FLAGS_FOCUSABLE:J = 0x8000L

.field private static final blacklist FLAGS_FOCUSED:J = 0x10000L

.field private static final blacklist FLAGS_HAS_AUTOFILL_HINTS:J = 0x200000000L

.field private static final blacklist FLAGS_HAS_AUTOFILL_ID:J = 0x20L

.field private static final blacklist FLAGS_HAS_AUTOFILL_OPTIONS:J = 0x400000000L

.field private static final blacklist FLAGS_HAS_AUTOFILL_PARENT_ID:J = 0x40L

.field private static final blacklist FLAGS_HAS_AUTOFILL_TYPE:J = 0x80000000L

.field private static final blacklist FLAGS_HAS_AUTOFILL_VALUE:J = 0x100000000L

.field private static final blacklist FLAGS_HAS_CLASSNAME:J = 0x10L

.field private static final blacklist FLAGS_HAS_COMPLEX_TEXT:J = 0x2L

.field private static final blacklist FLAGS_HAS_CONTENT_DESCRIPTION:J = 0x800000L

.field private static final blacklist FLAGS_HAS_EXTRAS:J = 0x1000000L

.field private static final blacklist FLAGS_HAS_HINT_ID_ENTRY:J = 0x800000000L

.field private static final blacklist FLAGS_HAS_ID:J = 0x80L

.field private static final blacklist FLAGS_HAS_INPUT_TYPE:J = 0x4000000L

.field private static final blacklist FLAGS_HAS_LARGE_COORDS:J = 0x100L

.field private static final blacklist FLAGS_HAS_LOCALE_LIST:J = 0x2000000L

.field private static final blacklist FLAGS_HAS_MAX_TEXT_EMS:J = 0x10000000L

.field private static final blacklist FLAGS_HAS_MAX_TEXT_LENGTH:J = 0x20000000L

.field private static final blacklist FLAGS_HAS_MIME_TYPES:J = 0x1000000000L

.field private static final blacklist FLAGS_HAS_MIN_TEXT_EMS:J = 0x8000000L

.field private static final blacklist FLAGS_HAS_SCROLL:J = 0x200L

.field private static final blacklist FLAGS_HAS_TEXT:J = 0x1L

.field private static final blacklist FLAGS_HAS_TEXT_ID_ENTRY:J = 0x40000000L

.field private static final blacklist FLAGS_LONG_CLICKABLE:J = 0x2000L

.field private static final blacklist FLAGS_OPAQUE:J = 0x400000L

.field private static final blacklist FLAGS_SELECTED:J = 0x100000L

.field private static final blacklist FLAGS_VISIBILITY_MASK:J = 0xcL

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAutofillHints:[Ljava/lang/String;

.field private blacklist mAutofillId:Landroid/view/autofill/AutofillId;

.field private blacklist mAutofillOptions:[Ljava/lang/CharSequence;

.field private blacklist mAutofillType:I

.field private blacklist mAutofillValue:Landroid/view/autofill/AutofillValue;

.field private blacklist mClassName:Ljava/lang/String;

.field private blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mFlags:J

.field private blacklist mHeight:I

.field private blacklist mHintIdEntry:Ljava/lang/String;

.field private blacklist mId:I

.field private blacklist mIdEntry:Ljava/lang/String;

.field private blacklist mIdPackage:Ljava/lang/String;

.field private blacklist mIdType:Ljava/lang/String;

.field private blacklist mInputType:I

.field private blacklist mLocaleList:Landroid/os/LocaleList;

.field private blacklist mMaxEms:I

.field private blacklist mMaxLength:I

.field private blacklist mMinEms:I

.field private blacklist mParentAutofillId:Landroid/view/autofill/AutofillId;

.field private blacklist mReceiveContentMimeTypes:[Ljava/lang/String;

.field private blacklist mScrollX:I

.field private blacklist mScrollY:I

.field private blacklist mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

.field private blacklist mTextIdEntry:Ljava/lang/String;

.field private blacklist mWidth:I

.field private blacklist mX:I

.field private blacklist mY:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutofillId(Landroid/view/contentcapture/ViewNode;)Landroid/view/autofill/AutofillId;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillHints(Landroid/view/contentcapture/ViewNode;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillOptions(Landroid/view/contentcapture/ViewNode;[Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillType(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillValue(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillValue;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClassName(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mClassName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentDescription(Landroid/view/contentcapture/ViewNode;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExtras(Landroid/view/contentcapture/ViewNode;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V
    .registers 3

    iput-wide p1, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHeight(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHintIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mHintIdEntry:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmId(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIdPackage(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mIdPackage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIdType(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mIdType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInputType(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mInputType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLocaleList(Landroid/view/contentcapture/ViewNode;Landroid/os/LocaleList;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxEms(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxLength(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMinEms(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmParentAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReceiveContentMimeTypes(Landroid/view/contentcapture/ViewNode;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScrollX(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mScrollX:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScrollY(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mScrollY:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmText(Landroid/view/contentcapture/ViewNode;Landroid/view/contentcapture/ViewNode$ViewNodeText;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTextIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWidth(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmX(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mX:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmY(Landroid/view/contentcapture/ViewNode;I)V
    .registers 2

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mY:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-class v0, Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 120
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mId:I

    .line 108
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    .line 109
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    .line 110
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    .line 121
    return-void
.end method

.method private constructor blacklist <init>(JLandroid/os/Parcel;)V
    .registers 12
    .param p1, "nodeFlags"    # J
    .param p3, "parcel"    # Landroid/os/Parcel;

    .line 123
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mId:I

    .line 108
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    .line 109
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    .line 110
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    .line 124
    iput-wide p1, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    .line 126
    const-wide/16 v2, 0x20

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    .line 127
    const-class v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    iput-object v2, p0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 129
    :cond_25
    const-wide/16 v6, 0x40

    and-long/2addr v6, p1

    cmp-long v2, v6, v4

    if-eqz v2, :cond_36

    .line 130
    const-class v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    iput-object v2, p0, Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;

    .line 132
    :cond_36
    const-wide/16 v6, 0x1

    and-long/2addr v6, p1

    cmp-long v2, v6, v4

    if-eqz v2, :cond_4c

    .line 133
    new-instance v2, Landroid/view/contentcapture/ViewNode$ViewNodeText;

    const-wide/16 v6, 0x2

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-nez v6, :cond_47

    const/4 v1, 0x1

    :cond_47
    invoke-direct {v2, p3, v1}, Landroid/view/contentcapture/ViewNode$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v2, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    .line 135
    :cond_4c
    const-wide/16 v1, 0x10

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_59

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/ViewNode;->mClassName:Ljava/lang/String;

    .line 138
    :cond_59
    const-wide/16 v1, 0x80

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_80

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mId:I

    .line 140
    iget v1, p0, Landroid/view/contentcapture/ViewNode;->mId:I

    if-eq v1, v0, :cond_80

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v0, :cond_80

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdType:Ljava/lang/String;

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdPackage:Ljava/lang/String;

    .line 148
    :cond_80
    const-wide/16 v0, 0x100

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a0

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mX:I

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mY:I

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    goto :goto_bc

    .line 154
    :cond_a0
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .local v0, "val":I
    and-int/lit16 v1, v0, 0x7fff

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mX:I

    .line 156
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mY:I

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    and-int/lit16 v1, v0, 0x7fff

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    .line 159
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    .line 161
    .end local v0    # "val":I
    :goto_bc
    const-wide/16 v0, 0x200

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_cf

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mScrollX:I

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mScrollY:I

    .line 165
    :cond_cf
    const-wide/32 v0, 0x800000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_e1

    .line 166
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    .line 168
    :cond_e1
    const-wide/32 v0, 0x1000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_ef

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    .line 171
    :cond_ef
    const-wide/32 v0, 0x2000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_101

    .line 172
    const-class v0, Landroid/os/LocaleList;

    invoke-virtual {p3, v3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mLocaleList:Landroid/os/LocaleList;

    .line 174
    :cond_101
    const-wide v0, 0x1000000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_111

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    .line 177
    :cond_111
    const-wide/32 v0, 0x4000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11f

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mInputType:I

    .line 180
    :cond_11f
    const-wide/32 v0, 0x8000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_12d

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    .line 183
    :cond_12d
    const-wide/32 v0, 0x10000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_13b

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    .line 186
    :cond_13b
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_149

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    .line 189
    :cond_149
    const-wide/32 v0, 0x40000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_157

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;

    .line 192
    :cond_157
    const-wide v0, 0x80000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_167

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    .line 195
    :cond_167
    const-wide v0, 0x200000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_177

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillHints:[Ljava/lang/String;

    .line 198
    :cond_177
    const-wide v0, 0x100000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_18b

    .line 199
    const-class v0, Landroid/view/autofill/AutofillValue;

    invoke-virtual {p3, v3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillValue;

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 201
    :cond_18b
    const-wide v0, 0x400000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_19b

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    .line 204
    :cond_19b
    const-wide v0, 0x800000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1ab

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mHintIdEntry:Ljava/lang/String;

    .line 207
    :cond_1ab
    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ViewNode;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 654
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 655
    .local v0, "nodeFlags":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_11

    :cond_c
    new-instance v2, Landroid/view/contentcapture/ViewNode;

    invoke-direct {v2, v0, v1, p0}, Landroid/view/contentcapture/ViewNode;-><init>(JLandroid/os/Parcel;)V

    :goto_11
    return-object v2
.end method

.method private blacklist writeSelfToParcel(Landroid/os/Parcel;I)V
    .registers 47
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelFlags"    # I

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-wide v3, v0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    .line 491
    .local v3, "nodeFlags":J
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    const-wide/16 v6, 0x20

    if-eqz v5, :cond_f

    .line 492
    or-long/2addr v3, v6

    .line 495
    :cond_f
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;

    const-wide/16 v8, 0x40

    if-eqz v5, :cond_16

    .line 496
    or-long/2addr v3, v8

    .line 499
    :cond_16
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    const-wide/16 v10, 0x2

    const-wide/16 v12, 0x1

    if-eqz v5, :cond_28

    .line 500
    or-long/2addr v3, v12

    .line 501
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    invoke-virtual {v5}, Landroid/view/contentcapture/ViewNode$ViewNodeText;->isSimple()Z

    move-result v5

    if-nez v5, :cond_28

    .line 502
    or-long/2addr v3, v10

    .line 505
    :cond_28
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mClassName:Ljava/lang/String;

    const-wide/16 v14, 0x10

    if-eqz v5, :cond_2f

    .line 506
    or-long/2addr v3, v14

    .line 508
    :cond_2f
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mId:I

    const-wide/16 v16, 0x80

    move-wide/from16 v18, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3a

    .line 509
    or-long v3, v3, v16

    .line 511
    :cond_3a
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mX:I

    and-int/lit16 v5, v5, -0x8000

    const-wide/16 v20, 0x100

    const/4 v7, 0x0

    if-nez v5, :cond_61

    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mY:I

    and-int/lit16 v5, v5, -0x8000

    if-nez v5, :cond_61

    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    and-int/lit16 v5, v5, -0x8000

    if-eqz v5, :cond_51

    const/4 v5, 0x1

    goto :goto_52

    :cond_51
    move v5, v7

    :goto_52
    move-wide/from16 v22, v8

    iget v8, v0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    and-int/lit16 v8, v8, -0x8000

    if-eqz v8, :cond_5c

    const/4 v8, 0x1

    goto :goto_5d

    :cond_5c
    move v8, v7

    :goto_5d
    or-int/2addr v5, v8

    if-eqz v5, :cond_65

    goto :goto_63

    :cond_61
    move-wide/from16 v22, v8

    .line 513
    :goto_63
    or-long v3, v3, v20

    .line 515
    :cond_65
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mScrollX:I

    const-wide/16 v8, 0x200

    if-nez v5, :cond_6f

    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mScrollY:I

    if-eqz v5, :cond_70

    .line 516
    :cond_6f
    or-long/2addr v3, v8

    .line 518
    :cond_70
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    const-wide/32 v24, 0x800000

    if-eqz v5, :cond_79

    .line 519
    or-long v3, v3, v24

    .line 521
    :cond_79
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    const-wide/32 v26, 0x1000000

    if-eqz v5, :cond_82

    .line 522
    or-long v3, v3, v26

    .line 524
    :cond_82
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mLocaleList:Landroid/os/LocaleList;

    const-wide/32 v28, 0x2000000

    if-eqz v5, :cond_8b

    .line 525
    or-long v3, v3, v28

    .line 527
    :cond_8b
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    const-wide v30, 0x1000000000L

    if-eqz v5, :cond_96

    .line 528
    or-long v3, v3, v30

    .line 530
    :cond_96
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mInputType:I

    const-wide/32 v32, 0x4000000

    if-eqz v5, :cond_9f

    .line 531
    or-long v3, v3, v32

    .line 533
    :cond_9f
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    const-wide/32 v34, 0x8000000

    if-le v5, v6, :cond_a8

    .line 534
    or-long v3, v3, v34

    .line 536
    :cond_a8
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    const-wide/32 v36, 0x10000000

    if-le v5, v6, :cond_b1

    .line 537
    or-long v3, v3, v36

    .line 539
    :cond_b1
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    const-wide/32 v38, 0x20000000

    if-le v5, v6, :cond_ba

    .line 540
    or-long v3, v3, v38

    .line 542
    :cond_ba
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;

    const-wide/32 v40, 0x40000000

    if-eqz v5, :cond_c3

    .line 543
    or-long v3, v3, v40

    .line 545
    :cond_c3
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    if-eqz v5, :cond_ce

    .line 546
    const-wide v42, 0x100000000L

    or-long v3, v3, v42

    .line 548
    :cond_ce
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    if-eqz v5, :cond_d9

    .line 549
    const-wide v42, 0x80000000L

    or-long v3, v3, v42

    .line 551
    :cond_d9
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillHints:[Ljava/lang/String;

    if-eqz v5, :cond_e4

    .line 552
    const-wide v42, 0x200000000L

    or-long v3, v3, v42

    .line 554
    :cond_e4
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_ef

    .line 555
    const-wide v42, 0x400000000L

    or-long v3, v3, v42

    .line 557
    :cond_ef
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mHintIdEntry:Ljava/lang/String;

    if-eqz v5, :cond_fa

    .line 558
    const-wide v42, 0x800000000L

    or-long v3, v3, v42

    .line 560
    :cond_fa
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 562
    and-long v18, v3, v18

    const-wide/16 v42, 0x0

    cmp-long v5, v18, v42

    if-eqz v5, :cond_10a

    .line 563
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v5, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 565
    :cond_10a
    and-long v18, v3, v22

    cmp-long v5, v18, v42

    if-eqz v5, :cond_115

    .line 566
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v5, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 568
    :cond_115
    and-long/2addr v12, v3

    cmp-long v5, v12, v42

    if-eqz v5, :cond_127

    .line 569
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    and-long/2addr v10, v3

    cmp-long v10, v10, v42

    if-nez v10, :cond_123

    const/4 v10, 0x1

    goto :goto_124

    :cond_123
    move v10, v7

    :goto_124
    invoke-virtual {v5, v1, v10}, Landroid/view/contentcapture/ViewNode$ViewNodeText;->writeToParcel(Landroid/os/Parcel;Z)V

    .line 571
    :cond_127
    and-long v10, v3, v14

    cmp-long v5, v10, v42

    if-eqz v5, :cond_132

    .line 572
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    :cond_132
    and-long v10, v3, v16

    cmp-long v5, v10, v42

    if-eqz v5, :cond_154

    .line 575
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mId:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mId:I

    if-eq v5, v6, :cond_154

    .line 577
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v5, :cond_154

    .line 579
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mIdType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mIdPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 584
    :cond_154
    and-long v5, v3, v20

    cmp-long v5, v5, v42

    if-eqz v5, :cond_16f

    .line 585
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mX:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mY:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_183

    .line 590
    :cond_16f
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mY:I

    shl-int/lit8 v5, v5, 0x10

    iget v6, v0, Landroid/view/contentcapture/ViewNode;->mX:I

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    shl-int/lit8 v5, v5, 0x10

    iget v6, v0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    :goto_183
    and-long v5, v3, v8

    cmp-long v5, v5, v42

    if-eqz v5, :cond_193

    .line 594
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mScrollX:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mScrollY:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    :cond_193
    and-long v5, v3, v24

    cmp-long v5, v5, v42

    if-eqz v5, :cond_19e

    .line 598
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v5, v1, v7}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 600
    :cond_19e
    and-long v5, v3, v26

    cmp-long v5, v5, v42

    if-eqz v5, :cond_1a9

    .line 601
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 603
    :cond_1a9
    and-long v5, v3, v28

    cmp-long v5, v5, v42

    if-eqz v5, :cond_1b4

    .line 604
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v5, v7}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 606
    :cond_1b4
    and-long v5, v3, v30

    cmp-long v5, v5, v42

    if-eqz v5, :cond_1bf

    .line 607
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 609
    :cond_1bf
    and-long v5, v3, v32

    cmp-long v5, v5, v42

    if-eqz v5, :cond_1ca

    .line 610
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mInputType:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    :cond_1ca
    and-long v5, v3, v34

    cmp-long v5, v5, v42

    if-eqz v5, :cond_1d5

    .line 613
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    :cond_1d5
    and-long v5, v3, v36

    cmp-long v5, v5, v42

    if-eqz v5, :cond_1e0

    .line 616
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    :cond_1e0
    and-long v5, v3, v38

    cmp-long v5, v5, v42

    if-eqz v5, :cond_1eb

    .line 619
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    :cond_1eb
    and-long v5, v3, v40

    cmp-long v5, v5, v42

    if-eqz v5, :cond_1f6

    .line 622
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 624
    :cond_1f6
    const-wide v5, 0x80000000L

    and-long/2addr v5, v3

    cmp-long v5, v5, v42

    if-eqz v5, :cond_205

    .line 625
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    :cond_205
    const-wide v5, 0x200000000L

    and-long/2addr v5, v3

    cmp-long v5, v5, v42

    if-eqz v5, :cond_214

    .line 628
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 630
    :cond_214
    const-wide v5, 0x100000000L

    and-long/2addr v5, v3

    cmp-long v5, v5, v42

    if-eqz v5, :cond_223

    .line 631
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v1, v5, v7}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 633
    :cond_223
    const-wide v5, 0x400000000L

    and-long/2addr v5, v3

    cmp-long v5, v5, v42

    if-eqz v5, :cond_232

    .line 634
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 636
    :cond_232
    const-wide v5, 0x800000000L

    and-long/2addr v5, v3

    cmp-long v5, v5, v42

    if-eqz v5, :cond_241

    .line 637
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mHintIdEntry:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 639
    :cond_241
    return-void
.end method

.method public static blacklist writeToParcel(Landroid/os/Parcel;Landroid/view/contentcapture/ViewNode;I)V
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "node"    # Landroid/view/contentcapture/ViewNode;
    .param p2, "flags"    # I

    .line 644
    if-nez p1, :cond_8

    .line 645
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_b

    .line 647
    :cond_8
    invoke-direct {p1, p0, p2}, Landroid/view/contentcapture/ViewNode;->writeSelfToParcel(Landroid/os/Parcel;I)V

    .line 649
    :goto_b
    return-void
.end method


# virtual methods
.method public whitelist getAutofillHints()[Ljava/lang/String;
    .registers 2

    .line 458
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 221
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getAutofillOptions()[Ljava/lang/CharSequence;
    .registers 2

    .line 468
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getAutofillType()I
    .registers 2

    .line 453
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    return v0
.end method

.method public whitelist getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 357
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 286
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    return v0
.end method

.method public whitelist getHint()Ljava/lang/String;
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    iget-object v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getHintIdEntry()Ljava/lang/String;
    .registers 2

    .line 375
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mHintIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 238
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mId:I

    return v0
.end method

.method public whitelist getIdEntry()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIdPackage()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIdType()Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInputType()I
    .registers 2

    .line 427
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mInputType:I

    return v0
.end method

.method public whitelist getLeft()I
    .registers 2

    .line 261
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mX:I

    return v0
.end method

.method public whitelist getLocaleList()Landroid/os/LocaleList;
    .registers 2

    .line 480
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getMaxTextEms()I
    .registers 2

    .line 437
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    return v0
.end method

.method public whitelist getMaxTextLength()I
    .registers 2

    .line 442
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    return v0
.end method

.method public whitelist getMinTextEms()I
    .registers 2

    .line 432
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    return v0
.end method

.method public whitelist getParentAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getReceiveContentMimeTypes()[Ljava/lang/String;
    .registers 2

    .line 474
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScrollX()I
    .registers 2

    .line 271
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mScrollX:I

    return v0
.end method

.method public whitelist getScrollY()I
    .registers 2

    .line 276
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mScrollY:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    iget-object v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getTextBackgroundColor()I
    .registers 2

    .line 395
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public whitelist getTextColor()I
    .registers 2

    .line 390
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public whitelist getTextIdEntry()Ljava/lang/String;
    .registers 2

    .line 448
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTextLineBaselines()[I
    .registers 2

    .line 417
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    iget-object v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getTextLineCharOffsets()[I
    .registers 2

    .line 411
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    iget-object v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getTextSelectionEnd()I
    .registers 2

    .line 385
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public whitelist getTextSelectionStart()I
    .registers 2

    .line 380
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public whitelist getTextSize()F
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSize:F

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist getTextStyle()I
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextStyle:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist getTop()I
    .registers 2

    .line 266
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mY:I

    return v0
.end method

.method public whitelist getVisibility()I
    .registers 5

    .line 422
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0xc

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    return v0
.end method

.method public whitelist isAccessibilityFocused()Z
    .registers 5

    .line 326
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isActivated()Z
    .registers 5

    .line 346
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x200000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isAssistBlocked()Z
    .registers 5

    .line 291
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isCheckable()Z
    .registers 5

    .line 331
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x40000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isChecked()Z
    .registers 5

    .line 336
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isClickable()Z
    .registers 5

    .line 301
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isContextClickable()Z
    .registers 5

    .line 311
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 5

    .line 296
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0x800

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isFocusable()Z
    .registers 5

    .line 316
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isFocused()Z
    .registers 5

    .line 321
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isLongClickable()Z
    .registers 5

    .line 306
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isOpaque()Z
    .registers 5

    .line 351
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x400000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isSelected()Z
    .registers 5

    .line 341
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x100000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist setTextIdEntry(Ljava/lang/String;)V
    .registers 2
    .param p1, "textIdEntry"    # Ljava/lang/String;

    .line 485
    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;

    .line 486
    return-void
.end method
