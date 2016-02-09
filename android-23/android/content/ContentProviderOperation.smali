.class public Landroid/content/ContentProviderOperation;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderOperation$Builder;,
        Landroid/content/ContentProviderOperation$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContentProviderOperation"

.field public static final TYPE_ASSERT:I = 0x4

.field public static final TYPE_DELETE:I = 0x3

.field public static final TYPE_INSERT:I = 0x1

.field public static final TYPE_UPDATE:I = 0x2


# instance fields
.field private final mExpectedCount:Ljava/lang/Integer;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mSelectionArgsBackReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Landroid/content/ContentValues;

.field private final mValuesBackReferences:Landroid/content/ContentValues;

.field private final mYieldAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 468
    new-instance v0, Landroid/content/ContentProviderOperation$1;

    #@2
    invoke-direct {v0}, Landroid/content/ContentProviderOperation$1;-><init>()V

    #@5
    .line 467
    sput-object v0, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/content/ContentProviderOperation$Builder;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-get4(Landroid/content/ContentProviderOperation$Builder;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@9
    .line 64
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-get5(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@f
    .line 65
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-get6(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    #@15
    .line 66
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-get1(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    #@1b
    .line 67
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-get2(Landroid/content/ContentProviderOperation$Builder;)[Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    #@21
    .line 68
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-get0(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    #@27
    .line 69
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-get3(Landroid/content/ContentProviderOperation$Builder;)Ljava/util/Map;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@2d
    .line 70
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-get7(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    #@33
    .line 71
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-get8(Landroid/content/ContentProviderOperation$Builder;)Z

    #@36
    move-result v0

    #@37
    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    #@39
    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation;)V
    .locals 0
    .param p1, "builder"    # Landroid/content/ContentProviderOperation$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderOperation;Z)V
    .locals 1
    .param p1, "cpo"    # Landroid/content/ContentProviderOperation;
    .param p2, "removeUserIdFromUri"    # Z

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    iget v0, p1, Landroid/content/ContentProviderOperation;->mType:I

    #@5
    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@7
    .line 99
    if-eqz p2, :cond_0

    #@9
    .line 100
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@b
    invoke-static {v0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@11
    .line 104
    :goto_0
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    #@13
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    #@15
    .line 105
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    #@17
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    #@19
    .line 106
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    #@1b
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    #@1d
    .line 107
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    #@1f
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    #@21
    .line 108
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@23
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@25
    .line 109
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    #@27
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    #@29
    .line 110
    iget-boolean v0, p1, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    #@2b
    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    #@2d
    .line 97
    return-void

    #@2e
    .line 102
    :cond_0
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@30
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@32
    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    iput v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@b
    .line 76
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/net/Uri;

    #@13
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@15
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/content/ContentValues;

    #@23
    :goto_0
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    #@25
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    :goto_1
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    #@31
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_3

    #@37
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    :goto_2
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    #@3d
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_4

    #@43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v2

    #@47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v2

    #@4b
    :goto_3
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    #@4d
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_5

    #@53
    .line 82
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    #@55
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@58
    move-result-object v2

    #@59
    check-cast v2, Landroid/content/ContentValues;

    #@5b
    .line 81
    :goto_4
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    #@5d
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_0

    #@63
    .line 85
    new-instance v3, Ljava/util/HashMap;

    #@65
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@68
    .line 84
    :cond_0
    iput-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@6a
    .line 87
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@6c
    if-eqz v2, :cond_6

    #@6e
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v0

    #@72
    .line 89
    .local v0, "count":I
    const/4 v1, 0x0

    #@73
    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_6

    #@75
    .line 90
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v3

    #@7b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@82
    move-result v5

    #@83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@86
    move-result-object v5

    #@87
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    .line 89
    add-int/lit8 v1, v1, 0x1

    #@8c
    goto :goto_5

    #@8d
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    move-object v2, v3

    #@8e
    .line 77
    goto :goto_0

    #@8f
    :cond_2
    move-object v2, v3

    #@90
    .line 78
    goto :goto_1

    #@91
    :cond_3
    move-object v2, v3

    #@92
    .line 79
    goto :goto_2

    #@93
    :cond_4
    move-object v2, v3

    #@94
    .line 80
    goto :goto_3

    #@95
    :cond_5
    move-object v2, v3

    #@96
    .line 83
    goto :goto_4

    #@97
    .line 93
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9a
    move-result v2

    #@9b
    if-eqz v2, :cond_7

    #@9d
    const/4 v2, 0x1

    #@9e
    :goto_6
    iput-boolean v2, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    #@a0
    .line 74
    return-void

    #@a1
    :cond_7
    move v2, v4

    #@a2
    .line 93
    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/ContentProviderOperation;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private backRefToValue([Landroid/content/ContentProviderResult;ILjava/lang/Integer;)J
    .locals 6
    .param p1, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p2, "numBackRefs"    # I
    .param p3, "backRefIndex"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 448
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result v1

    #@4
    if-lt v1, p2, :cond_0

    #@6
    .line 449
    const-string/jumbo v1, "ContentProviderOperation"

    #@9
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 450
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "asked for back ref "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 451
    const-string/jumbo v5, " but there are only "

    #@25
    .line 450
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 451
    const-string/jumbo v5, " back refs"

    #@30
    .line 450
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-direct {v1, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1

    #@3c
    .line 453
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@3f
    move-result v1

    #@40
    aget-object v0, p1, v1

    #@42
    .line 455
    .local v0, "backRef":Landroid/content/ContentProviderResult;
    iget-object v1, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@44
    if-eqz v1, :cond_1

    #@46
    .line 456
    iget-object v1, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@48
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@4b
    move-result-wide v2

    #@4c
    .line 460
    .local v2, "backRefValue":J
    :goto_0
    return-wide v2

    #@4d
    .line 458
    .end local v2    # "backRefValue":J
    :cond_1
    iget-object v1, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    #@4f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@52
    move-result v1

    #@53
    int-to-long v2, v1

    #@54
    .restart local v2    # "backRefValue":J
    goto :goto_0
.end method

.method public static newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 200
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    #@2
    const/4 v1, 0x4

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder;)V

    #@7
    return-object v0
.end method

.method public static newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 191
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    #@2
    const/4 v1, 0x3

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder;)V

    #@7
    return-object v0
.end method

.method public static newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 173
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder;)V

    #@7
    return-object v0
.end method

.method public static newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 182
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder;)V

    #@7
    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;
    .locals 19
    .param p1, "provider"    # Landroid/content/ContentProvider;
    .param p2, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p3, "numBackRefs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    #@0
    .prologue
    .line 297
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    move/from16 v2, p3

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    #@9
    move-result-object v18

    #@a
    .line 299
    .local v18, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    #@c
    move-object/from16 v1, p2

    #@e
    move/from16 v2, p3

    #@10
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation;->resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    .line 301
    .local v7, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@16
    iget v3, v0, Landroid/content/ContentProviderOperation;->mType:I

    #@18
    const/4 v4, 0x1

    #@19
    if-ne v3, v4, :cond_1

    #@1b
    .line 302
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@1f
    move-object/from16 v0, p1

    #@21
    move-object/from16 v1, v18

    #@23
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@26
    move-result-object v15

    #@27
    .line 303
    .local v15, "newUri":Landroid/net/Uri;
    if-nez v15, :cond_0

    #@29
    .line 304
    new-instance v3, Landroid/content/OperationApplicationException;

    #@2b
    const-string/jumbo v4, "insert failed"

    #@2e
    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3

    #@32
    .line 306
    :cond_0
    new-instance v3, Landroid/content/ContentProviderResult;

    #@34
    invoke-direct {v3, v15}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;)V

    #@37
    return-object v3

    #@38
    .line 310
    .end local v15    # "newUri":Landroid/net/Uri;
    :cond_1
    move-object/from16 v0, p0

    #@3a
    iget v3, v0, Landroid/content/ContentProviderOperation;->mType:I

    #@3c
    const/4 v4, 0x3

    #@3d
    if-ne v3, v4, :cond_2

    #@3f
    .line 311
    move-object/from16 v0, p0

    #@41
    iget-object v3, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v4, v0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    #@47
    move-object/from16 v0, p1

    #@49
    invoke-virtual {v0, v3, v4, v7}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@4c
    move-result v16

    #@4d
    .line 351
    .local v16, "numRows":I
    :goto_0
    move-object/from16 v0, p0

    #@4f
    iget-object v3, v0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    #@51
    if-eqz v3, :cond_a

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v3, v0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    #@57
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@5a
    move-result v3

    #@5b
    move/from16 v0, v16

    #@5d
    if-eq v3, v0, :cond_a

    #@5f
    .line 352
    const-string/jumbo v3, "ContentProviderOperation"

    #@62
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 353
    new-instance v3, Landroid/content/OperationApplicationException;

    #@6b
    new-instance v4, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v6, "wrong number of rows: "

    #@73
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    move/from16 v0, v16

    #@79
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    #@84
    throw v3

    #@85
    .line 312
    .end local v16    # "numRows":I
    :cond_2
    move-object/from16 v0, p0

    #@87
    iget v3, v0, Landroid/content/ContentProviderOperation;->mType:I

    #@89
    const/4 v4, 0x2

    #@8a
    if-ne v3, v4, :cond_3

    #@8c
    .line 313
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@90
    move-object/from16 v0, p0

    #@92
    iget-object v4, v0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    #@94
    move-object/from16 v0, p1

    #@96
    move-object/from16 v1, v18

    #@98
    invoke-virtual {v0, v3, v1, v4, v7}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@9b
    move-result v16

    #@9c
    .restart local v16    # "numRows":I
    goto :goto_0

    #@9d
    .line 314
    .end local v16    # "numRows":I
    :cond_3
    move-object/from16 v0, p0

    #@9f
    iget v3, v0, Landroid/content/ContentProviderOperation;->mType:I

    #@a1
    const/4 v4, 0x4

    #@a2
    if-ne v3, v4, :cond_9

    #@a4
    .line 316
    const/4 v5, 0x0

    #@a5
    .line 317
    .local v5, "projection":[Ljava/lang/String;
    if-eqz v18, :cond_5

    #@a7
    .line 319
    new-instance v17, Ljava/util/ArrayList;

    #@a9
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    #@ac
    .line 320
    .local v17, "projectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    #@af
    move-result-object v3

    #@b0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b3
    move-result-object v12

    #@b4
    .local v12, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@b7
    move-result v3

    #@b8
    if-eqz v3, :cond_4

    #@ba
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bd
    move-result-object v11

    #@be
    check-cast v11, Ljava/util/Map$Entry;

    #@c0
    .line 321
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c3
    move-result-object v3

    #@c4
    check-cast v3, Ljava/lang/String;

    #@c6
    move-object/from16 v0, v17

    #@c8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cb
    goto :goto_1

    #@cc
    .line 323
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@cf
    move-result v3

    #@d0
    new-array v3, v3, [Ljava/lang/String;

    #@d2
    move-object/from16 v0, v17

    #@d4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d7
    move-result-object v5

    #@d8
    .end local v5    # "projection":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    #@da
    .line 325
    .end local v12    # "entry$iterator":Ljava/util/Iterator;
    .end local v17    # "projectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p0

    #@dc
    iget-object v4, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@de
    move-object/from16 v0, p0

    #@e0
    iget-object v6, v0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    #@e2
    const/4 v8, 0x0

    #@e3
    move-object/from16 v3, p1

    #@e5
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@e8
    move-result-object v9

    #@e9
    .line 327
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    #@ec
    move-result v16

    #@ed
    .line 328
    .restart local v16    # "numRows":I
    if-eqz v5, :cond_8

    #@ef
    .line 329
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    #@f2
    move-result v3

    #@f3
    if-eqz v3, :cond_8

    #@f5
    .line 330
    const/4 v14, 0x0

    #@f6
    .local v14, "i":I
    :goto_2
    array-length v3, v5

    #@f7
    if-ge v14, v3, :cond_6

    #@f9
    .line 331
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@fc
    move-result-object v10

    #@fd
    .line 332
    .local v10, "cursorValue":Ljava/lang/String;
    aget-object v3, v5, v14

    #@ff
    move-object/from16 v0, v18

    #@101
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@104
    move-result-object v13

    #@105
    .line 333
    .local v13, "expectedValue":Ljava/lang/String;
    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@108
    move-result v3

    #@109
    if-nez v3, :cond_7

    #@10b
    .line 335
    const-string/jumbo v3, "ContentProviderOperation"

    #@10e
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    #@111
    move-result-object v4

    #@112
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@115
    .line 336
    new-instance v3, Landroid/content/OperationApplicationException;

    #@117
    new-instance v4, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v6, "Found value "

    #@11f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v4

    #@123
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v4

    #@127
    .line 337
    const-string/jumbo v6, " when expected "

    #@12a
    .line 336
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v4

    #@12e
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v4

    #@132
    .line 337
    const-string/jumbo v6, " for column "

    #@135
    .line 336
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v4

    #@139
    .line 338
    aget-object v6, v5, v14

    #@13b
    .line 336
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v4

    #@13f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v4

    #@143
    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    #@146
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@147
    .line 343
    .end local v10    # "cursorValue":Ljava/lang/String;
    .end local v13    # "expectedValue":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v16    # "numRows":I
    :catchall_0
    move-exception v3

    #@148
    .line 344
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@14b
    .line 343
    throw v3

    #@14c
    .line 330
    .restart local v10    # "cursorValue":Ljava/lang/String;
    .restart local v13    # "expectedValue":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v16    # "numRows":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    #@14e
    goto :goto_2

    #@14f
    .line 344
    .end local v10    # "cursorValue":Ljava/lang/String;
    .end local v13    # "expectedValue":Ljava/lang/String;
    .end local v14    # "i":I
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@152
    goto/16 :goto_0

    #@154
    .line 347
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v16    # "numRows":I
    :cond_9
    const-string/jumbo v3, "ContentProviderOperation"

    #@157
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    #@15a
    move-result-object v4

    #@15b
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15e
    .line 348
    new-instance v3, Ljava/lang/IllegalStateException;

    #@160
    new-instance v4, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v6, "bad type, "

    #@168
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v4

    #@16c
    move-object/from16 v0, p0

    #@16e
    iget v6, v0, Landroid/content/ContentProviderOperation;->mType:I

    #@170
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@173
    move-result-object v4

    #@174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v4

    #@178
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17b
    throw v3

    #@17c
    .line 356
    .restart local v16    # "numRows":I
    :cond_a
    new-instance v3, Landroid/content/ContentProviderResult;

    #@17e
    move/from16 v0, v16

    #@180
    invoke-direct {v3, v0}, Landroid/content/ContentProviderResult;-><init>(I)V

    #@183
    return-object v3
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 464
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 222
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@2
    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getWithoutUserIdInUri()Landroid/content/ContentProviderOperation;
    .locals 2

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@2
    invoke-static {v0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 116
    new-instance v0, Landroid/content/ContentProviderOperation;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-direct {v0, p0, v1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Z)V

    #@e
    return-object v0

    #@f
    .line 118
    :cond_0
    return-object p0
.end method

.method public isAssertQuery()Z
    .locals 2

    #@0
    .prologue
    .line 258
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@2
    const/4 v1, 0x4

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isDelete()Z
    .locals 2

    #@0
    .prologue
    .line 240
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isInsert()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 231
    iget v1, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isReadOperation()Z
    .locals 2

    #@0
    .prologue
    .line 278
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@2
    const/4 v1, 0x4

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isUpdate()Z
    .locals 2

    #@0
    .prologue
    .line 249
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isWriteOperation()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 269
    iget v1, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@3
    const/4 v2, 0x3

    #@4
    if-eq v1, v2, :cond_0

    #@6
    iget v1, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@8
    if-ne v1, v0, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    iget v1, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@d
    const/4 v2, 0x2

    #@e
    if-eq v1, v2, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isYieldAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    #@2
    return v0
.end method

.method public resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;
    .locals 8
    .param p1, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p2, "numBackRefs"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 411
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 412
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    #@7
    return-object v5

    #@8
    .line 414
    :cond_0
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    #@a
    array-length v5, v5

    #@b
    new-array v1, v5, [Ljava/lang/String;

    #@d
    .line 415
    .local v1, "newArgs":[Ljava/lang/String;
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    #@f
    iget-object v6, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    #@11
    array-length v6, v6

    #@12
    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 417
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@17
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1a
    move-result-object v5

    #@1b
    .line 416
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "selectionArgBackRef$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_1

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/util/Map$Entry;

    #@2b
    .line 418
    .local v2, "selectionArgBackRef":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Ljava/lang/Integer;

    #@31
    .line 419
    .local v4, "selectionArgIndex":Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@34
    move-result-object v5

    #@35
    check-cast v5, Ljava/lang/Integer;

    #@37
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@3a
    move-result v0

    #@3b
    .line 420
    .local v0, "backRefIndex":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@3e
    move-result v5

    #@3f
    .line 421
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v6

    #@43
    invoke-direct {p0, p1, p2, v6}, Landroid/content/ContentProviderOperation;->backRefToValue([Landroid/content/ContentProviderResult;ILjava/lang/Integer;)J

    #@46
    move-result-wide v6

    #@47
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    .line 420
    aput-object v6, v1, v5

    #@4d
    goto :goto_0

    #@4e
    .line 423
    .end local v0    # "backRefIndex":I
    .end local v2    # "selectionArgBackRef":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "selectionArgIndex":Ljava/lang/Integer;
    :cond_1
    return-object v1
.end method

.method public resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;
    .locals 8
    .param p1, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p2, "numBackRefs"    # I

    #@0
    .prologue
    .line 374
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    #@2
    if-nez v5, :cond_0

    #@4
    .line 375
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    #@6
    return-object v5

    #@7
    .line 378
    :cond_0
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    #@9
    if-nez v5, :cond_1

    #@b
    .line 379
    new-instance v4, Landroid/content/ContentValues;

    #@d
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    #@10
    .line 383
    .local v4, "values":Landroid/content/ContentValues;
    :goto_0
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    #@12
    invoke-virtual {v5}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    #@15
    move-result-object v5

    #@16
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v2

    #@1a
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_3

    #@20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljava/util/Map$Entry;

    #@26
    .line 384
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Ljava/lang/String;

    #@2c
    .line 385
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    #@2e
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    #@31
    move-result-object v0

    #@32
    .line 386
    .local v0, "backRefIndex":Ljava/lang/Integer;
    if-nez v0, :cond_2

    #@34
    .line 387
    const-string/jumbo v5, "ContentProviderOperation"

    #@37
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 388
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@40
    new-instance v6, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v7, "values backref "

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    const-string/jumbo v7, " is not an integer"

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v5

    #@5f
    .line 381
    .end local v0    # "backRefIndex":Ljava/lang/Integer;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    #@61
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    #@63
    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    #@66
    .restart local v4    # "values":Landroid/content/ContentValues;
    goto :goto_0

    #@67
    .line 390
    .restart local v0    # "backRefIndex":Ljava/lang/Integer;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProviderOperation;->backRefToValue([Landroid/content/ContentProviderResult;ILjava/lang/Integer;)J

    #@6a
    move-result-wide v6

    #@6b
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@72
    goto :goto_1

    #@73
    .line 392
    .end local v0    # "backRefIndex":Ljava/lang/Integer;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mType: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", mUri: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 429
    const-string/jumbo v1, ", mSelection: "

    #@22
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 429
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    #@28
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 430
    const-string/jumbo v1, ", mExpectedCount: "

    #@2f
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 430
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    #@35
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 431
    const-string/jumbo v1, ", mYieldAllowed: "

    #@3c
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 431
    iget-boolean v1, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    #@42
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 432
    const-string/jumbo v1, ", mValues: "

    #@49
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 432
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    #@4f
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 433
    const-string/jumbo v1, ", mValuesBackReferences: "

    #@56
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 433
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    #@5c
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 434
    const-string/jumbo v1, ", mSelectionArgsBackReferences: "

    #@63
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 434
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@69
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 122
    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    #@4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 123
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #@9
    invoke-static {p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    #@c
    .line 124
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 125
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 126
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    #@15
    invoke-virtual {v2, p1, v4}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 130
    :goto_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 131
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 132
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    #@21
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    .line 136
    :goto_1
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 137
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 138
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    #@2d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@30
    .line 142
    :goto_2
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    #@32
    if-eqz v2, :cond_3

    #@34
    .line 143
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 144
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    #@39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@3c
    move-result v2

    #@3d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 148
    :goto_3
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    #@42
    if-eqz v2, :cond_4

    #@44
    .line 149
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@47
    .line 150
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    #@49
    invoke-virtual {v2, p1, v4}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    #@4c
    .line 154
    :goto_4
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@4e
    if-eqz v2, :cond_5

    #@50
    .line 155
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 156
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@55
    invoke-interface {v2}, Ljava/util/Map;->size()I

    #@58
    move-result v2

    #@59
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 157
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@5e
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@61
    move-result-object v2

    #@62
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object v1

    #@66
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_6

    #@6c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object v0

    #@70
    check-cast v0, Ljava/util/Map$Entry;

    #@72
    .line 158
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@75
    move-result-object v2

    #@76
    check-cast v2, Ljava/lang/Integer;

    #@78
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@7b
    move-result v2

    #@7c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@7f
    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@82
    move-result-object v2

    #@83
    check-cast v2, Ljava/lang/Integer;

    #@85
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@88
    move-result v2

    #@89
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    goto :goto_5

    #@8d
    .line 128
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@90
    goto :goto_0

    #@91
    .line 134
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@94
    goto :goto_1

    #@95
    .line 140
    :cond_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@98
    goto :goto_2

    #@99
    .line 146
    :cond_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9c
    goto :goto_3

    #@9d
    .line 152
    :cond_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a0
    goto :goto_4

    #@a1
    .line 162
    :cond_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a4
    .line 164
    :cond_6
    iget-boolean v2, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    #@a6
    if-eqz v2, :cond_7

    #@a8
    move v2, v3

    #@a9
    :goto_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@ac
    .line 121
    return-void

    #@ad
    :cond_7
    move v2, v4

    #@ae
    .line 164
    goto :goto_6
.end method
