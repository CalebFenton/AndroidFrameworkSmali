.class public final Landroid/graphics/pdf/models/FormEditRecord;
.super Ljava/lang/Object;
.source "FormEditRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/models/FormEditRecord$Builder;,
        Landroid/graphics/pdf/models/FormEditRecord$EditType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/pdf/models/FormEditRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EDIT_TYPE_CLICK:I = 0x0

.field public static final whitelist EDIT_TYPE_SET_INDICES:I = 0x1

.field public static final whitelist EDIT_TYPE_SET_TEXT:I = 0x2


# instance fields
.field private final blacklist mClickPoint:Landroid/graphics/Point;

.field private final blacklist mPageNumber:I

.field private final blacklist mSelectedIndices:[I

.field private final blacklist mText:Ljava/lang/String;

.field private final blacklist mType:I

.field private final blacklist mWidgetIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Landroid/graphics/pdf/models/FormEditRecord$1;

    invoke-direct {v0}, Landroid/graphics/pdf/models/FormEditRecord$1;-><init>()V

    sput-object v0, Landroid/graphics/pdf/models/FormEditRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIILandroid/graphics/Point;[ILjava/lang/String;)V
    .registers 8
    .param p1, "pageNumber"    # I
    .param p2, "widgetIndex"    # I
    .param p3, "type"    # I
    .param p4, "clickPoint"    # Landroid/graphics/Point;
    .param p5, "selectedIndices"    # [I
    .param p6, "text"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Landroid/graphics/pdf/models/FormEditRecord;->mPageNumber:I

    .line 91
    iput p2, p0, Landroid/graphics/pdf/models/FormEditRecord;->mWidgetIndex:I

    .line 92
    iput p3, p0, Landroid/graphics/pdf/models/FormEditRecord;->mType:I

    .line 93
    iput-object p4, p0, Landroid/graphics/pdf/models/FormEditRecord;->mClickPoint:Landroid/graphics/Point;

    .line 94
    new-instance v0, Landroid/graphics/pdf/models/FormEditRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/graphics/pdf/models/FormEditRecord$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mSelectedIndices:[I

    .line 95
    iput-object p6, p0, Landroid/graphics/pdf/models/FormEditRecord;->mText:Ljava/lang/String;

    .line 96
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/graphics/Point;[ILjava/lang/String;Landroid/graphics/pdf/models/FormEditRecord-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/graphics/pdf/models/FormEditRecord;-><init>(IIILandroid/graphics/Point;[ILjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mPageNumber:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mWidgetIndex:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mType:I

    .line 102
    const-class v0, Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mClickPoint:Landroid/graphics/Point;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .local v0, "selectedIndicesSize":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/pdf/models/FormEditRecord;->mSelectedIndices:[I

    .line 106
    iget-object v1, p0, Landroid/graphics/pdf/models/FormEditRecord;->mSelectedIndices:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/pdf/models/FormEditRecord;->mText:Ljava/lang/String;

    .line 109
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/graphics/pdf/models/FormEditRecord-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/pdf/models/FormEditRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0()[I
    .registers 1

    .line 94
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 178
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 179
    return v0

    .line 181
    :cond_4
    instance-of v1, p1, Landroid/graphics/pdf/models/FormEditRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    move-object v1, p1

    check-cast v1, Landroid/graphics/pdf/models/FormEditRecord;

    .line 185
    .local v1, "formEditRecord":Landroid/graphics/pdf/models/FormEditRecord;
    iget v3, p0, Landroid/graphics/pdf/models/FormEditRecord;->mPageNumber:I

    iget v4, v1, Landroid/graphics/pdf/models/FormEditRecord;->mPageNumber:I

    if-ne v3, v4, :cond_3d

    iget v3, p0, Landroid/graphics/pdf/models/FormEditRecord;->mWidgetIndex:I

    iget v4, v1, Landroid/graphics/pdf/models/FormEditRecord;->mWidgetIndex:I

    if-ne v3, v4, :cond_3d

    iget v3, p0, Landroid/graphics/pdf/models/FormEditRecord;->mType:I

    iget v4, v1, Landroid/graphics/pdf/models/FormEditRecord;->mType:I

    if-ne v3, v4, :cond_3d

    iget-object v3, p0, Landroid/graphics/pdf/models/FormEditRecord;->mClickPoint:Landroid/graphics/Point;

    iget-object v4, v1, Landroid/graphics/pdf/models/FormEditRecord;->mClickPoint:Landroid/graphics/Point;

    .line 188
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Landroid/graphics/pdf/models/FormEditRecord;->mText:Ljava/lang/String;

    iget-object v4, v1, Landroid/graphics/pdf/models/FormEditRecord;->mText:Ljava/lang/String;

    .line 189
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Landroid/graphics/pdf/models/FormEditRecord;->mSelectedIndices:[I

    iget-object v4, v1, Landroid/graphics/pdf/models/FormEditRecord;->mSelectedIndices:[I

    .line 190
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v2

    .line 185
    :goto_3e
    return v0

    .line 182
    .end local v1    # "formEditRecord":Landroid/graphics/pdf/models/FormEditRecord;
    :cond_3f
    return v2
.end method

.method public whitelist getClickPoint()Landroid/graphics/Point;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mClickPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getPageNumber()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mPageNumber:I

    return v0
.end method

.method public whitelist getSelectedIndices()[I
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mSelectedIndices:[I

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mType:I

    return v0
.end method

.method public whitelist getWidgetIndex()I
    .registers 2

    .line 124
    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mWidgetIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 195
    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mPageNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mWidgetIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/pdf/models/FormEditRecord;->mClickPoint:Landroid/graphics/Point;

    iget-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mSelectedIndices:[I

    .line 196
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/graphics/pdf/models/FormEditRecord;->mText:Ljava/lang/String;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 195
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 167
    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mPageNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mWidgetIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mClickPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    iget-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mSelectedIndices:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mSelectedIndices:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 173
    iget-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return-void
.end method
