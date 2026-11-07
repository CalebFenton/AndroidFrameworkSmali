.class public final Landroid/media/tv/TableRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "TableRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TableRequest$TableName;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TableRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x2

.field public static final whitelist TABLE_NAME_BAT:I = 0x4

.field public static final whitelist TABLE_NAME_CAT:I = 0x2

.field public static final whitelist TABLE_NAME_EIT:I = 0x6

.field public static final whitelist TABLE_NAME_NIT:I = 0x3

.field public static final whitelist TABLE_NAME_PAT:I = 0x0

.field public static final whitelist TABLE_NAME_PMT:I = 0x1

.field public static final whitelist TABLE_NAME_SDT:I = 0x5

.field public static final whitelist TABLE_NAME_SIT:I = 0x9

.field public static final whitelist TABLE_NAME_TDT:I = 0x7

.field public static final whitelist TABLE_NAME_TOT:I = 0x8


# instance fields
.field private final blacklist mTableId:I

.field private final blacklist mTableName:I

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Landroid/media/tv/TableRequest$1;

    invoke-direct {v0}, Landroid/media/tv/TableRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/TableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "tableId"    # I
    .param p4, "tableName"    # I
    .param p5, "version"    # I

    .line 102
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 103
    iput p3, p0, Landroid/media/tv/TableRequest;->mTableId:I

    .line 104
    iput p4, p0, Landroid/media/tv/TableRequest;->mTableName:I

    .line 105
    iput p5, p0, Landroid/media/tv/TableRequest;->mVersion:I

    .line 106
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 109
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TableRequest;->mTableId:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TableRequest;->mTableName:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TableRequest;->mVersion:I

    .line 113
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableRequest;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 97
    new-instance v0, Landroid/media/tv/TableRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/TableRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTableId()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/media/tv/TableRequest;->mTableId:I

    return v0
.end method

.method public whitelist getTableName()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/media/tv/TableRequest;->mTableName:I

    return v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/media/tv/TableRequest;->mVersion:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 148
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 149
    iget v0, p0, Landroid/media/tv/TableRequest;->mTableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/media/tv/TableRequest;->mTableName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/media/tv/TableRequest;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return-void
.end method
