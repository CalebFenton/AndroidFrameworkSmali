.class public final Landroid/app/wallpaper/WallpaperInstance;
.super Ljava/lang/Object;
.source "WallpaperInstance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpaper/WallpaperInstance;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_ID:Ljava/lang/String; = "default_id"


# instance fields
.field private final blacklist mDescription:Landroid/app/wallpaper/WallpaperDescription;

.field private final blacklist mIdOverride:Ljava/lang/String;

.field private final blacklist mInfo:Landroid/app/WallpaperInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 139
    new-instance v0, Landroid/app/wallpaper/WallpaperInstance$1;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperInstance$1;-><init>()V

    sput-object v0, Landroid/app/wallpaper/WallpaperInstance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V
    .registers 4
    .param p1, "info"    # Landroid/app/WallpaperInfo;
    .param p2, "description"    # Landroid/app/wallpaper/WallpaperDescription;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/wallpaper/WallpaperInstance;-><init>(Landroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Landroid/app/WallpaperInfo;
    .param p2, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p3, "idOverride"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    .line 77
    iput-object p2, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    .line 78
    iput-object p3, p0, Landroid/app/wallpaper/WallpaperInstance;->mIdOverride:Ljava/lang/String;

    .line 79
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    .line 134
    sget-object v0, Landroid/app/wallpaper/WallpaperDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/wallpaper/WallpaperDescription;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mIdOverride:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 114
    :cond_4
    instance-of v1, p1, Landroid/app/wallpaper/WallpaperInstance;

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    move-object v1, p1

    check-cast v1, Landroid/app/wallpaper/WallpaperInstance;

    .line 115
    .local v1, "that":Landroid/app/wallpaper/WallpaperInstance;
    iget-object v3, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v3, :cond_25

    .line 116
    iget-object v3, v1, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v3, :cond_23

    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    return v0

    .line 118
    :cond_25
    iget-object v3, v1, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    .line 119
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v1, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 120
    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v2

    .line 118
    :goto_4b
    return v0

    .line 114
    .end local v1    # "that":Landroid/app/wallpaper/WallpaperInstance;
    :cond_4c
    return v2
.end method

.method public whitelist getDescription()Landroid/app/wallpaper/WallpaperDescription;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mIdOverride:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 94
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mIdOverride:Ljava/lang/String;

    return-object v0

    .line 95
    :cond_7
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 96
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_16
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v0, :cond_25

    .line 98
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_25
    const-string v0, "default_id"

    return-object v0
.end method

.method public whitelist getInfo()Landroid/app/WallpaperInfo;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 126
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_23

    .line 127
    :cond_17
    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 126
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    :goto_23
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v0, p1, p2}, Landroid/app/wallpaper/WallpaperDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mIdOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 156
    return-void
.end method
