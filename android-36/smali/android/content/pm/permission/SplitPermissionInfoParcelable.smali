.class public Landroid/content/pm/permission/SplitPermissionInfoParcelable;
.super Ljava/lang/Object;
.source "SplitPermissionInfoParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mNewPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSplitPermission:Ljava/lang/String;

.field private final blacklist mTargetSdk:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 201
    new-instance v0, Landroid/content/pm/permission/SplitPermissionInfoParcelable$1;

    invoke-direct {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable$1;-><init>()V

    sput-object v0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "splitPermission":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "newPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    .local v2, "targetSdk":I
    iput-object v0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    .line 187
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 189
    iput-object v1, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    .line 190
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 192
    iput v2, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    .line 193
    const-class v6, Landroid/annotation/IntRange;

    iget v8, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    const-string v9, "from"

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 197
    invoke-direct {p0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->onConstructed()V

    .line 198
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;I)V
    .registers 13
    .param p1, "splitPermission"    # Ljava/lang/String;
    .param p3, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 89
    .local p2, "newPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    .line 91
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 93
    iput-object p2, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    .line 94
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 96
    iput p3, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    .line 97
    const-class v3, Landroid/annotation/IntRange;

    iget v5, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    const-string v6, "from"

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 101
    invoke-direct {p0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->onConstructed()V

    .line 102
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    return-void
.end method

.method private blacklist onConstructed()V
    .registers 3

    .line 57
    iget-object v0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    const-string/jumbo v1, "newPermissions"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 136
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 138
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 140
    .local v2, "that":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    iget-object v3, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    .line 141
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    iget-object v4, v2, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    .line 142
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget v3, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    iget v4, v2, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    if-ne v3, v4, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 140
    :goto_31
    return v0

    .line 136
    .end local v2    # "that":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    :cond_32
    :goto_32
    return v1
.end method

.method public blacklist getNewPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSplitPermission()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTargetSdk()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 152
    const/4 v0, 0x1

    .line 153
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 154
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 155
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    add-int/2addr v1, v2

    .line 156
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 165
    iget-object v0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 167
    iget v0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
