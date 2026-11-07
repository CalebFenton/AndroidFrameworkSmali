.class public final Landroid/graphics/pdf/models/FormWidgetInfo;
.super Ljava/lang/Object;
.source "FormWidgetInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/models/FormWidgetInfo$Builder;,
        Landroid/graphics/pdf/models/FormWidgetInfo$WidgetType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/pdf/models/FormWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist WIDGET_TYPE_CHECKBOX:I = 0x2

.field public static final whitelist WIDGET_TYPE_COMBOBOX:I = 0x4

.field public static final whitelist WIDGET_TYPE_LISTBOX:I = 0x5

.field public static final whitelist WIDGET_TYPE_PUSHBUTTON:I = 0x1

.field public static final whitelist WIDGET_TYPE_RADIOBUTTON:I = 0x3

.field public static final whitelist WIDGET_TYPE_SIGNATURE:I = 0x7

.field public static final whitelist WIDGET_TYPE_TEXTFIELD:I = 0x6

.field public static final whitelist WIDGET_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mAccessibilityLabel:Ljava/lang/String;

.field private final blacklist mEditableText:Z

.field private final blacklist mFontSize:F

.field private final blacklist mListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxLength:I

.field private final blacklist mMultiLineText:Z

.field private final blacklist mMultiSelect:Z

.field private final blacklist mReadOnly:Z

.field private final blacklist mTextValue:Ljava/lang/String;

.field private final blacklist mWidgetIndex:I

.field private final blacklist mWidgetRect:Landroid/graphics/Rect;

.field private final blacklist mWidgetType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Landroid/graphics/pdf/models/FormWidgetInfo$1;

    invoke-direct {v0}, Landroid/graphics/pdf/models/FormWidgetInfo$1;-><init>()V

    sput-object v0, Landroid/graphics/pdf/models/FormWidgetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/graphics/Rect;ZLjava/lang/String;Ljava/lang/String;ZZZIFLjava/util/List;)V
    .registers 14
    .param p1, "widgetType"    # I
    .param p2, "widgetIndex"    # I
    .param p3, "widgetRect"    # Landroid/graphics/Rect;
    .param p4, "readOnly"    # Z
    .param p5, "textValue"    # Ljava/lang/String;
    .param p6, "accessibilityLabel"    # Ljava/lang/String;
    .param p7, "editableText"    # Z
    .param p8, "multiSelect"    # Z
    .param p9, "multiLineText"    # Z
    .param p10, "maxLength"    # I
    .param p11, "fontSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Rect;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZIF",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p12, "listItems":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/pdf/models/ListItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetType:I

    .line 109
    iput p2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetIndex:I

    .line 110
    iput-object p3, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetRect:Landroid/graphics/Rect;

    .line 111
    iput-boolean p4, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mReadOnly:Z

    .line 112
    iput-object p5, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mTextValue:Ljava/lang/String;

    .line 113
    iput-object p6, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mAccessibilityLabel:Ljava/lang/String;

    .line 114
    iput-boolean p7, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mEditableText:Z

    .line 115
    iput-boolean p8, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiSelect:Z

    .line 116
    iput-boolean p9, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiLineText:Z

    .line 117
    iput p10, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMaxLength:I

    .line 118
    iput p11, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mFontSize:F

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mListItems:Ljava/util/List;

    .line 121
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetType:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetIndex:I

    .line 126
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetRect:Landroid/graphics/Rect;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    iput-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mReadOnly:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mTextValue:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mAccessibilityLabel:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v1

    goto :goto_3f

    :cond_3e
    move v0, v2

    :goto_3f
    iput-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mEditableText:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    move v0, v1

    goto :goto_4a

    :cond_49
    move v0, v2

    :goto_4a
    iput-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiSelect:Z

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_54

    :cond_53
    move v1, v2

    :goto_54
    iput-boolean v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiLineText:Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMaxLength:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mFontSize:F

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/pdf/models/ListItem;>;"
    sget-object v1, Landroid/graphics/pdf/models/ListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 137
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mListItems:Ljava/util/List;

    .line 138
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/graphics/pdf/models/FormWidgetInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/pdf/models/FormWidgetInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 256
    instance-of v0, p1, Landroid/graphics/pdf/models/FormWidgetInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    move-object v0, p1

    check-cast v0, Landroid/graphics/pdf/models/FormWidgetInfo;

    .line 257
    .local v0, "other":Landroid/graphics/pdf/models/FormWidgetInfo;
    iget v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetType:I

    iget v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetType:I

    if-ne v2, v3, :cond_64

    iget v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetIndex:I

    iget v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetIndex:I

    if-ne v2, v3, :cond_64

    iget-object v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetRect:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetRect:Landroid/graphics/Rect;

    .line 259
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    iget-boolean v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mReadOnly:Z

    iget-boolean v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mReadOnly:Z

    if-ne v2, v3, :cond_64

    iget-object v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mTextValue:Ljava/lang/String;

    iget-object v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mTextValue:Ljava/lang/String;

    .line 261
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mAccessibilityLabel:Ljava/lang/String;

    iget-object v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mAccessibilityLabel:Ljava/lang/String;

    .line 262
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    iget-boolean v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mEditableText:Z

    iget-boolean v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mEditableText:Z

    if-ne v2, v3, :cond_64

    iget-boolean v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiSelect:Z

    iget-boolean v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiSelect:Z

    if-ne v2, v3, :cond_64

    iget-boolean v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiLineText:Z

    iget-boolean v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiLineText:Z

    if-ne v2, v3, :cond_64

    iget v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMaxLength:I

    iget v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMaxLength:I

    if-ne v2, v3, :cond_64

    iget v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mFontSize:F

    iget v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mFontSize:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_64

    iget-object v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mListItems:Ljava/util/List;

    iget-object v3, v0, Landroid/graphics/pdf/models/FormWidgetInfo;->mListItems:Ljava/util/List;

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const/4 v1, 0x1

    goto :goto_65

    :cond_64
    nop

    .line 257
    :goto_65
    return v1

    .line 270
    .end local v0    # "other":Landroid/graphics/pdf/models/FormWidgetInfo;
    :cond_66
    return v1
.end method

.method public whitelist getAccessibilityLabel()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mAccessibilityLabel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontSize()F
    .registers 2

    .line 225
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mFontSize:F

    return v0
.end method

.method public whitelist getListItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/ListItem;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mListItems:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMaxLength()I
    .registers 2

    .line 216
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMaxLength:I

    return v0
.end method

.method public whitelist getTextValue()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mTextValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidgetIndex()I
    .registers 2

    .line 149
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetIndex:I

    return v0
.end method

.method public whitelist getWidgetRect()Landroid/graphics/Rect;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getWidgetType()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 14

    .line 239
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetType:I

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetIndex:I

    .line 241
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mReadOnly:Z

    .line 243
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mTextValue:Ljava/lang/String;

    iget-object v6, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mAccessibilityLabel:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mEditableText:Z

    .line 246
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiSelect:Z

    .line 247
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiLineText:Z

    .line 248
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMaxLength:I

    .line 249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mFontSize:F

    .line 250
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-object v12, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mListItems:Ljava/util/List;

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 239
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEditableText()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mEditableText:Z

    return v0
.end method

.method public whitelist isMultiLineText()Z
    .registers 2

    .line 207
    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiLineText:Z

    return v0
.end method

.method public whitelist isMultiSelect()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiSelect:Z

    return v0
.end method

.method public whitelist isReadOnly()Z
    .registers 2

    .line 162
    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mReadOnly:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FormWidgetInfo{\n\ttype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tindex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\trect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\treadOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mReadOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\ttextValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mTextValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\taccessibilityLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mAccessibilityLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\teditableText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mEditableText:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tmultiSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiSelect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tmultiLineText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiLineText:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tmaxLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMaxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tfontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mFontSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tmChoiceOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mListItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

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

    .line 291
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mWidgetRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 294
    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mReadOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mTextValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mAccessibilityLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mEditableText:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiSelect:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMultiLineText:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mMaxLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mFontSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 302
    iget-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo;->mListItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 303
    return-void
.end method
