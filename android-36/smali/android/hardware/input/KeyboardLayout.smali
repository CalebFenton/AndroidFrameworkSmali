.class public final Landroid/hardware/input/KeyboardLayout;
.super Ljava/lang/Object;
.source "KeyboardLayout.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayout$LayoutType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/hardware/input/KeyboardLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LAYOUT_TYPE_AZERTY:Ljava/lang/String; = "azerty"

.field public static final blacklist LAYOUT_TYPE_COLEMAK:Ljava/lang/String; = "colemak"

.field public static final blacklist LAYOUT_TYPE_DVORAK:Ljava/lang/String; = "dvorak"

.field public static final blacklist LAYOUT_TYPE_EXTENDED:Ljava/lang/String; = "extended"

.field public static final blacklist LAYOUT_TYPE_QWERTY:Ljava/lang/String; = "qwerty"

.field public static final blacklist LAYOUT_TYPE_QWERTZ:Ljava/lang/String; = "qwertz"

.field public static final blacklist LAYOUT_TYPE_TURKISH_F:Ljava/lang/String; = "turkish_f"

.field public static final blacklist LAYOUT_TYPE_TURKISH_Q:Ljava/lang/String; = "turkish_q"

.field public static final blacklist LAYOUT_TYPE_UNDEFINED:Ljava/lang/String; = "undefined"

.field public static final blacklist LAYOUT_TYPE_WORKMAN:Ljava/lang/String; = "workman"


# instance fields
.field private final greylist-max-o mCollection:Ljava/lang/String;

.field private final greylist-max-o mDescriptor:Ljava/lang/String;

.field private final greylist-max-o mLabel:Ljava/lang/String;

.field private final blacklist mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

.field private final greylist-max-o mLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mPriority:I

.field private final greylist-max-o mProductId:I

.field private final greylist-max-o mVendorId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Landroid/hardware/input/KeyboardLayout$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyboardLayout$1;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    .line 164
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$smof(I)Landroid/hardware/input/KeyboardLayout$LayoutType;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    .line 168
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/KeyboardLayout-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayout;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;III)V
    .registers 10
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "collection"    # Ljava/lang/String;
    .param p4, "priority"    # I
    .param p5, "locales"    # Landroid/os/LocaleList;
    .param p6, "layoutValue"    # I
    .param p7, "vid"    # I
    .param p8, "pid"    # I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    .line 152
    iput p4, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    .line 153
    iput-object p5, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    .line 154
    invoke-static {p6}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$smof(I)Landroid/hardware/input/KeyboardLayout$LayoutType;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 155
    iput p7, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    .line 156
    iput p8, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    .line 157
    return-void
.end method

.method public static blacklist isLayoutTypeValid(Ljava/lang/String;)Z
    .registers 7
    .param p0, "layoutName"    # Ljava/lang/String;

    .line 314
    const-string v0, "Provided layout name should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    invoke-static {}, Landroid/hardware/input/KeyboardLayout$LayoutType;->values()[Landroid/hardware/input/KeyboardLayout$LayoutType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_1f

    aget-object v4, v0, v3

    .line 316
    .local v4, "layoutType":Landroid/hardware/input/KeyboardLayout$LayoutType;
    invoke-static {v4}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$mgetName(Landroid/hardware/input/KeyboardLayout$LayoutType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 317
    const/4 v0, 0x1

    return v0

    .line 315
    .end local v4    # "layoutType":Landroid/hardware/input/KeyboardLayout$LayoutType;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 321
    :cond_1f
    return v2
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/hardware/input/KeyboardLayout;)I
    .registers 5
    .param p1, "another"    # Landroid/hardware/input/KeyboardLayout;

    .line 282
    iget v0, p1, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    iget v1, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 283
    .local v0, "result":I
    if-nez v0, :cond_1a

    .line 284
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-static {v1}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$fgetmValue(Landroid/hardware/input/KeyboardLayout$LayoutType;)I

    move-result v1

    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-static {v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$fgetmValue(Landroid/hardware/input/KeyboardLayout$LayoutType;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 286
    :cond_1a
    if-nez v0, :cond_24

    .line 287
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 289
    :cond_24
    if-nez v0, :cond_2e

    .line 290
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 292
    :cond_2e
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    check-cast p1, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {p0, p1}, Landroid/hardware/input/KeyboardLayout;->compareTo(Landroid/hardware/input/KeyboardLayout;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCollection()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getDescriptor()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getLabel()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLayoutType()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-static {v0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$mgetName(Landroid/hardware/input/KeyboardLayout$LayoutType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getLocales()Landroid/os/LocaleList;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public greylist-max-o getProductId()I
    .registers 2

    .line 231
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    return v0
.end method

.method public greylist-max-o getVendorId()I
    .registers 2

    .line 222
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    return v0
.end method

.method public blacklist isAnsiLayout()Z
    .registers 5

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 239
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 240
    .local v1, "locale":Ljava/util/Locale;
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "us"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    sget-object v3, Landroid/hardware/input/KeyboardLayout$LayoutType;->EXTENDED:Landroid/hardware/input/KeyboardLayout$LayoutType;

    if-eq v2, v3, :cond_25

    .line 242
    const/4 v2, 0x1

    return v2

    .line 238
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isJisLayout()Z
    .registers 5

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 253
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 254
    .local v1, "locale":Ljava/util/Locale;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 255
    const/4 v2, 0x1

    return v2

    .line 252
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 297
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_20

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "collectionString":Ljava/lang/String;
    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyboardLayout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", locales: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    .line 301
    invoke-virtual {v2}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", layout type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    .line 302
    invoke-static {v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$mgetName(Landroid/hardware/input/KeyboardLayout$LayoutType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vendorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 268
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 273
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-static {v0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$mgetValue(Landroid/hardware/input/KeyboardLayout$LayoutType;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    return-void
.end method
