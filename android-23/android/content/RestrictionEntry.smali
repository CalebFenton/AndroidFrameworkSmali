.class public Landroid/content/RestrictionEntry;
.super Ljava/lang/Object;
.source "RestrictionEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/RestrictionEntry$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_BUNDLE:I = 0x7

.field public static final TYPE_BUNDLE_ARRAY:I = 0x8

.field public static final TYPE_CHOICE:I = 0x2

.field public static final TYPE_CHOICE_LEVEL:I = 0x3

.field public static final TYPE_INTEGER:I = 0x5

.field public static final TYPE_MULTI_SELECT:I = 0x4

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_STRING:I = 0x6


# instance fields
.field private mChoiceEntries:[Ljava/lang/String;

.field private mChoiceValues:[Ljava/lang/String;

.field private mCurrentValue:Ljava/lang/String;

.field private mCurrentValues:[Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mRestrictions:[Landroid/content/RestrictionEntry;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 534
    new-instance v0, Landroid/content/RestrictionEntry$1;

    #@2
    invoke-direct {v0}, Landroid/content/RestrictionEntry$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/RestrictionEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 145
    iput p1, p0, Landroid/content/RestrictionEntry;->mType:I

    #@5
    .line 146
    iput-object p2, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@7
    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v2

    #@8
    iput v2, p0, Landroid/content/RestrictionEntry;->mType:I

    #@a
    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    iput-object v2, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@10
    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    iput-object v2, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    #@16
    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    #@1c
    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    iput-object v2, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    #@22
    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    #@28
    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@2e
    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    iput-object v2, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@34
    .line 507
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    #@37
    move-result-object v1

    #@38
    .line 508
    .local v1, "parcelables":[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    #@3a
    .line 509
    array-length v2, v1

    #@3b
    new-array v2, v2, [Landroid/content/RestrictionEntry;

    #@3d
    iput-object v2, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@3f
    .line 510
    const/4 v0, 0x0

    #@40
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@41
    if-ge v0, v2, :cond_0

    #@43
    .line 511
    iget-object v3, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@45
    aget-object v2, v1, v0

    #@47
    check-cast v2, Landroid/content/RestrictionEntry;

    #@49
    aput-object v2, v3, v0

    #@4b
    .line 510
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 498
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "selectedInt"    # I

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 188
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@5
    .line 189
    const/4 v0, 0x5

    #@6
    iput v0, p0, Landroid/content/RestrictionEntry;->mType:I

    #@8
    .line 190
    invoke-virtual {p0, p2}, Landroid/content/RestrictionEntry;->setIntValue(I)V

    #@b
    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "selectedString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 155
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@5
    .line 156
    const/4 v0, 0x2

    #@6
    iput v0, p0, Landroid/content/RestrictionEntry;->mType:I

    #@8
    .line 157
    iput-object p2, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@a
    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "selectedState"    # Z

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 166
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@5
    .line 167
    const/4 v0, 0x1

    #@6
    iput v0, p0, Landroid/content/RestrictionEntry;->mType:I

    #@8
    .line 168
    invoke-virtual {p0, p2}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    #@b
    .line 165
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Landroid/content/RestrictionEntry;Z)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "restrictionEntries"    # [Landroid/content/RestrictionEntry;
    .param p3, "isBundleArray"    # Z

    #@0
    .prologue
    const/4 v4, 0x7

    #@1
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 205
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@6
    .line 206
    if-eqz p3, :cond_1

    #@8
    .line 207
    const/16 v1, 0x8

    #@a
    iput v1, p0, Landroid/content/RestrictionEntry;->mType:I

    #@c
    .line 208
    if-eqz p2, :cond_2

    #@e
    .line 209
    const/4 v1, 0x0

    #@f
    array-length v2, p2

    #@10
    :goto_0
    if-ge v1, v2, :cond_2

    #@12
    aget-object v0, p2, v1

    #@14
    .line 210
    .local v0, "restriction":Landroid/content/RestrictionEntry;
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getType()I

    #@17
    move-result v3

    #@18
    if-eq v3, v4, :cond_0

    #@1a
    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v2, "bundle_array restriction can only have nested restriction entries of type bundle"

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 209
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 217
    .end local v0    # "restriction":Landroid/content/RestrictionEntry;
    :cond_1
    iput v4, p0, Landroid/content/RestrictionEntry;->mType:I

    #@28
    .line 219
    :cond_2
    invoke-virtual {p0, p2}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    #@2b
    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "selectedStrings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 177
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@5
    .line 178
    const/4 v0, 0x4

    #@6
    iput v0, p0, Landroid/content/RestrictionEntry;->mType:I

    #@8
    .line 179
    iput-object p2, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@a
    .line 176
    return-void
.end method

.method public static createBundleArrayEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "restrictionEntries"    # [Landroid/content/RestrictionEntry;

    #@0
    .prologue
    .line 242
    new-instance v0, Landroid/content/RestrictionEntry;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;[Landroid/content/RestrictionEntry;Z)V

    #@6
    return-object v0
.end method

.method public static createBundleEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "restrictionEntries"    # [Landroid/content/RestrictionEntry;

    #@0
    .prologue
    .line 230
    new-instance v0, Landroid/content/RestrictionEntry;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;[Landroid/content/RestrictionEntry;Z)V

    #@6
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 518
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 456
    if-ne p1, p0, :cond_0

    #@4
    return v3

    #@5
    .line 457
    :cond_0
    instance-of v1, p1, Landroid/content/RestrictionEntry;

    #@7
    if-nez v1, :cond_1

    #@9
    return v4

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 458
    check-cast v0, Landroid/content/RestrictionEntry;

    #@d
    .line 459
    .local v0, "other":Landroid/content/RestrictionEntry;
    iget v1, p0, Landroid/content/RestrictionEntry;->mType:I

    #@f
    iget v2, v0, Landroid/content/RestrictionEntry;->mType:I

    #@11
    if-ne v1, v2, :cond_2

    #@13
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@15
    iget-object v2, v0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_3

    #@1d
    .line 460
    :cond_2
    return v4

    #@1e
    .line 462
    :cond_3
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@20
    if-nez v1, :cond_4

    #@22
    iget-object v1, v0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@24
    if-nez v1, :cond_4

    #@26
    .line 463
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@28
    if-nez v1, :cond_4

    #@2a
    iget-object v1, v0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@2c
    if-nez v1, :cond_4

    #@2e
    .line 464
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@30
    iget-object v2, v0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@32
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    .line 462
    if-eqz v1, :cond_4

    #@38
    .line 465
    return v3

    #@39
    .line 467
    :cond_4
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@3b
    if-nez v1, :cond_5

    #@3d
    iget-object v1, v0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@3f
    if-nez v1, :cond_5

    #@41
    .line 468
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@43
    if-nez v1, :cond_5

    #@45
    iget-object v1, v0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@47
    if-nez v1, :cond_5

    #@49
    .line 469
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@4b
    iget-object v2, v0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@4d
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@50
    move-result v1

    #@51
    .line 467
    if-eqz v1, :cond_5

    #@53
    .line 470
    return v3

    #@54
    .line 472
    :cond_5
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@56
    if-nez v1, :cond_6

    #@58
    iget-object v1, v0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@5a
    if-nez v1, :cond_6

    #@5c
    .line 473
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@5e
    if-nez v1, :cond_6

    #@60
    iget-object v1, v0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@62
    if-nez v1, :cond_6

    #@64
    .line 474
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@66
    iget-object v2, v0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@68
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@6b
    move-result v1

    #@6c
    .line 472
    if-eqz v1, :cond_6

    #@6e
    .line 475
    return v3

    #@6f
    .line 477
    :cond_6
    return v4
.end method

.method public getAllSelectedStrings()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getChoiceEntries()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getChoiceValues()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 435
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRestrictions()[Landroid/content/RestrictionEntry;
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@2
    return-object v0
.end method

.method public getSelectedState()Z
    .locals 1

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSelectedString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 258
    iget v0, p0, Landroid/content/RestrictionEntry;->mType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 7

    #@0
    .prologue
    .line 483
    iget-object v2, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v2

    #@6
    add-int/lit16 v0, v2, 0x20f

    #@8
    .line 484
    .local v0, "result":I
    iget-object v2, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 485
    mul-int/lit8 v2, v0, 0x1f

    #@e
    iget-object v3, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@13
    move-result v3

    #@14
    add-int v0, v2, v3

    #@16
    .line 495
    :cond_0
    :goto_0
    return v0

    #@17
    .line 486
    :cond_1
    iget-object v2, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@19
    if-eqz v2, :cond_3

    #@1b
    .line 487
    iget-object v3, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@1d
    const/4 v2, 0x0

    #@1e
    array-length v4, v3

    #@1f
    :goto_1
    if-ge v2, v4, :cond_0

    #@21
    aget-object v1, v3, v2

    #@23
    .line 488
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@25
    .line 489
    mul-int/lit8 v5, v0, 0x1f

    #@27
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@2a
    move-result v6

    #@2b
    add-int v0, v5, v6

    #@2d
    .line 487
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 492
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@32
    if-eqz v2, :cond_0

    #@34
    .line 493
    mul-int/lit8 v2, v0, 0x1f

    #@36
    iget-object v3, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@38
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@3b
    move-result v3

    #@3c
    add-int v0, v2, v3

    #@3e
    goto :goto_0
.end method

.method public setAllSelectedStrings([Ljava/lang/String;)V
    .locals 0
    .param p1, "allSelectedStrings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 327
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@2
    .line 326
    return-void
.end method

.method public setChoiceEntries(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stringArrayResId"    # I

    #@0
    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    #@a
    .line 400
    return-void
.end method

.method public setChoiceEntries([Ljava/lang/String;)V
    .locals 0
    .param p1, "choiceEntries"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 392
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    #@2
    .line 391
    return-void
.end method

.method public setChoiceValues(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stringArrayResId"    # I

    #@0
    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    #@a
    .line 354
    return-void
.end method

.method public setChoiceValues([Ljava/lang/String;)V
    .locals 0
    .param p1, "choiceValues"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 344
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    #@2
    .line 343
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 427
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    #@2
    .line 426
    return-void
.end method

.method public setIntValue(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@6
    .line 299
    return-void
.end method

.method public setRestrictions([Landroid/content/RestrictionEntry;)V
    .locals 0
    .param p1, "restrictions"    # [Landroid/content/RestrictionEntry;

    #@0
    .prologue
    .line 371
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@2
    .line 370
    return-void
.end method

.method public setSelectedState(Z)V
    .locals 1
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 318
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@6
    .line 317
    return-void
.end method

.method public setSelectedString(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 309
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@2
    .line 308
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    #@0
    .prologue
    .line 451
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    #@2
    .line 450
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 250
    iput p1, p0, Landroid/content/RestrictionEntry;->mType:I

    #@2
    .line 249
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x27

    #@2
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "RestrictionEntry{mType="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    .line 547
    iget v1, p0, Landroid/content/RestrictionEntry;->mType:I

    #@10
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 548
    const-string/jumbo v1, ", mKey=\'"

    #@17
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 548
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@1d
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 549
    const-string/jumbo v1, ", mTitle=\'"

    #@28
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 549
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    #@2e
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 550
    const-string/jumbo v1, ", mDescription=\'"

    #@39
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 550
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    #@3f
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 551
    const-string/jumbo v1, ", mChoiceEntries="

    #@4a
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 551
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    #@50
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    .line 552
    const-string/jumbo v1, ", mChoiceValues="

    #@5b
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 552
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    #@61
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    .line 553
    const-string/jumbo v1, ", mCurrentValue=\'"

    #@6c
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    .line 553
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@72
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 554
    const-string/jumbo v1, ", mCurrentValues="

    #@7d
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 554
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@83
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 555
    const-string/jumbo v1, ", mRestrictions="

    #@8e
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    .line 555
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@94
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    .line 556
    const/16 v1, 0x7d

    #@9e
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v0

    #@a6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 523
    iget v0, p0, Landroid/content/RestrictionEntry;->mType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 524
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 525
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 526
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 527
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@19
    .line 528
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1e
    .line 529
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 530
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@28
    .line 531
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    #@2a
    const/4 v1, 0x0

    #@2b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@2e
    .line 522
    return-void
.end method
