.class public final Landroid/service/settings/preferences/MetadataResult;
.super Ljava/lang/Object;
.source "MetadataResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/MetadataResult$Builder;,
        Landroid/service/settings/preferences/MetadataResult$ResultCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/preferences/MetadataResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESULT_INTERNAL_ERROR:I = 0x2

.field public static final whitelist RESULT_OK:I = 0x0

.field public static final whitelist RESULT_UNSUPPORTED:I = 0x1


# instance fields
.field private final blacklist mMetadataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResultCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Landroid/service/settings/preferences/MetadataResult$1;

    invoke-direct {v0}, Landroid/service/settings/preferences/MetadataResult$1;-><init>()V

    sput-object v0, Landroid/service/settings/preferences/MetadataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/MetadataResult;->mResultCode:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/settings/preferences/MetadataResult;->mMetadataList:Ljava/util/List;

    .line 99
    iget-object v0, p0, Landroid/service/settings/preferences/MetadataResult;->mMetadataList:Ljava/util/List;

    sget-object v1, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 100
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/settings/preferences/MetadataResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/MetadataResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/settings/preferences/MetadataResult$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/service/settings/preferences/MetadataResult$Builder;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Landroid/service/settings/preferences/MetadataResult$Builder;->-$$Nest$fgetmResultCode(Landroid/service/settings/preferences/MetadataResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/MetadataResult;->mResultCode:I

    .line 94
    invoke-static {p1}, Landroid/service/settings/preferences/MetadataResult$Builder;->-$$Nest$fgetmMetadataList(Landroid/service/settings/preferences/MetadataResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/MetadataResult;->mMetadataList:Ljava/util/List;

    .line 95
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/settings/preferences/MetadataResult$Builder;Landroid/service/settings/preferences/MetadataResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/MetadataResult;-><init>(Landroid/service/settings/preferences/MetadataResult$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMetadataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/service/settings/preferences/MetadataResult;->mMetadataList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getResultCode()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/service/settings/preferences/MetadataResult;->mResultCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget v0, p0, Landroid/service/settings/preferences/MetadataResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Landroid/service/settings/preferences/MetadataResult;->mMetadataList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 107
    return-void
.end method
