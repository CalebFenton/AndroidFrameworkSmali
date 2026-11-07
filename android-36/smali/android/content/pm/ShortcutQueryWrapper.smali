.class public final Landroid/content/pm/ShortcutQueryWrapper;
.super Landroid/content/pm/LauncherApps$ShortcutQuery;
.source "ShortcutQueryWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ShortcutQueryWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 165
    new-instance v0, Landroid/content/pm/ShortcutQueryWrapper$1;

    invoke-direct {v0}, Landroid/content/pm/ShortcutQueryWrapper$1;-><init>()V

    sput-object v0, Landroid/content/pm/ShortcutQueryWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/LauncherApps$ShortcutQuery;)V
    .registers 4
    .param p1, "query"    # Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 38
    invoke-direct {p0}, Landroid/content/pm/ShortcutQueryWrapper;-><init>()V

    .line 39
    iget-wide v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mChangedSince:J

    iput-wide v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    .line 40
    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mLocusIds:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    .line 42
    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mShortcutIds:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    .line 43
    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    .line 44
    iget v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mQueryFlags:I

    iput v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    .line 45
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 131
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 136
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 137
    .local v1, "changedSince":J
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-nez v3, :cond_12

    move-object v3, v4

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "pkg":Ljava/lang/String;
    :goto_16
    const/4 v5, 0x0

    .line 139
    .local v5, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_24

    .line 140
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 141
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 143
    :cond_24
    const/4 v6, 0x0

    .line 144
    .local v6, "locusIds":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3a

    .line 145
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 146
    const-class v7, Landroid/content/LocusId;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-class v8, Landroid/content/LocusId;

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 148
    :cond_3a
    and-int/lit8 v7, v0, 0x10

    if-nez v7, :cond_40

    move-object v7, v4

    goto :goto_48

    .line 149
    :cond_40
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    :goto_48
    nop

    .line 150
    .local v7, "activity":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 152
    .local v8, "queryFlags":I
    iput-wide v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    .line 153
    iput-object v3, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    .line 154
    iput-object v5, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    .line 155
    iput-object v6, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    .line 156
    iput-object v7, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    .line 157
    iput v8, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    .line 158
    const-class v9, Landroid/content/pm/LauncherApps$ShortcutQuery$QueryFlags;

    iget v10, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    invoke-static {v9, v4, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 162
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivity()Landroid/content/ComponentName;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getChangedSince()J
    .registers 3

    .line 48
    iget-wide v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    return-wide v0
.end method

.method public blacklist getLocusIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getQueryFlags()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    return v0
.end method

.method public blacklist getShortcutIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 100
    const-string v0, "ShortcutQueryWrapper {  }"

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "flg":B
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 112
    :cond_8
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 113
    :cond_f
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 114
    :cond_16
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1d

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 115
    :cond_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 116
    iget-wide v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    :cond_2e
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 119
    :cond_37
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    if-eqz v1, :cond_40

    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 120
    :cond_40
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 121
    :cond_49
    iget v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return-void
.end method
