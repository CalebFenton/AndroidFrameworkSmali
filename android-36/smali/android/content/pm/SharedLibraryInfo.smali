.class public final Landroid/content/pm/SharedLibraryInfo;
.super Ljava/lang/Object;
.source "SharedLibraryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SharedLibraryInfo$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_BUILTIN:I = 0x0

.field public static final whitelist TYPE_DYNAMIC:I = 0x1

.field public static final whitelist TYPE_SDK_PACKAGE:I = 0x3

.field public static final whitelist TYPE_STATIC:I = 0x2

.field public static final whitelist VERSION_UNDEFINED:I = -0x1


# instance fields
.field private final blacklist mCertDigests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCodePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDeclaringPackage:Landroid/content/pm/VersionedPackage;

.field private blacklist mDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDependentPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsNative:Z

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final blacklist mOptionalDependentPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPath:Ljava/lang/String;

.field private final greylist-max-o mType:I

.field private final greylist-max-o mVersion:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 531
    new-instance v0, Landroid/content/pm/SharedLibraryInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SharedLibraryInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    goto :goto_23

    .line 200
    :cond_21
    iput-object v1, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    .line 202
    :goto_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    .line 205
    const-class v0, Landroid/content/pm/VersionedPackage;

    .line 206
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    .line 207
    const-class v0, Landroid/content/pm/VersionedPackage;

    .line 208
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    .line 209
    sget-object v0, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/content/pm/VersionedPackage;

    .line 212
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/content/pm/VersionedPackage;

    .line 211
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCertDigests:Ljava/util/List;

    .line 214
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/SharedLibraryInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/SharedLibraryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JI)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "versionMajor"    # J
    .param p4, "type"    # I

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    .line 225
    iput-object p1, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    .line 226
    iput-wide p2, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    .line 227
    iput p4, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    .line 228
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    .line 229
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    .line 230
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    .line 231
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    .line 232
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    .line 233
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCertDigests:Ljava/util/List;

    .line 234
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JILjava/util/List;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "versionMajor"    # J
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p5, "certDigests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    .line 246
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    .line 247
    iput-object p1, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    .line 248
    iput-wide p2, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    .line 249
    iput p4, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    .line 250
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    .line 251
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    .line 252
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    .line 253
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    .line 254
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    .line 255
    iput-object p5, p0, Landroid/content/pm/SharedLibraryInfo;->mCertDigests:Ljava/util/List;

    .line 256
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "version"    # J
    .param p7, "type"    # I
    .param p8, "declaringPackage"    # Landroid/content/pm/VersionedPackage;
    .param p11, "isNative"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 127
    .local p3, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "dependentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .local p10, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    .line 131
    iput-object p4, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    .line 132
    iput-wide p5, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    .line 133
    iput p7, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    .line 134
    iput-object p8, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    .line 135
    iput-object p9, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    .line 136
    iput-object p10, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    .line 137
    iput-boolean p11, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    .line 139
    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCertDigests:Ljava/util/List;

    .line 140
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;ZLandroid/util/Pair;)V
    .registers 29
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "version"    # J
    .param p7, "type"    # I
    .param p8, "declaringPackage"    # Landroid/content/pm/VersionedPackage;
    .param p10, "isNative"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;Z",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 161
    .local p3, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local p11, "allDependentPackages":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 162
    move-object/from16 v2, p1

    iput-object v2, v0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    .line 163
    move-object/from16 v3, p2

    iput-object v3, v0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    .line 164
    move-object/from16 v4, p3

    iput-object v4, v0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    .line 165
    move-object/from16 v5, p4

    iput-object v5, v0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    .line 166
    move-wide/from16 v6, p5

    iput-wide v6, v0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    .line 167
    move/from16 v8, p7

    iput v8, v0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    .line 168
    move-object/from16 v9, p8

    iput-object v9, v0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    .line 169
    move-object/from16 v10, p9

    iput-object v10, v0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    .line 170
    move/from16 v11, p10

    iput-boolean v11, v0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    .line 171
    const/4 v12, 0x0

    iput-object v12, v0, Landroid/content/pm/SharedLibraryInfo;->mCertDigests:Ljava/util/List;

    .line 173
    iget-object v12, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    .line 174
    .local v12, "allDependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    iget-object v13, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    .line 175
    .local v13, "usesLibOptional":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iput-object v12, v0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    .line 176
    const/4 v14, 0x0

    .line 177
    .local v14, "optionalDependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    iget v15, v0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x3

    if-ne v15, v1, :cond_7a

    .line 178
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->sdkLibIndependence()Z

    move-result v1

    if-eqz v1, :cond_7a

    if-eqz v12, :cond_7a

    if-eqz v13, :cond_7a

    .line 180
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ne v1, v15, :cond_7a

    .line 181
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_53
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v1, v15, :cond_7a

    .line 182
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/VersionedPackage;

    .line 183
    .local v15, "versionedPackage":Landroid/content/pm/VersionedPackage;
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_77

    .line 184
    if-nez v14, :cond_74

    .line 185
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v16

    .line 187
    :cond_74
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v15    # "versionedPackage":Landroid/content/pm/VersionedPackage;
    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 191
    .end local v1    # "k":I
    :cond_7a
    iput-object v14, v0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    .line 192
    return-void
.end method

.method private static greylist-max-o typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 512
    packed-switch p0, :pswitch_data_16

    .line 526
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 523
    :pswitch_7
    const-string/jumbo v0, "sdk"

    return-object v0

    .line 520
    :pswitch_b
    const-string/jumbo v0, "static"

    return-object v0

    .line 517
    :pswitch_f
    const-string v0, "dynamic"

    return-object v0

    .line 514
    :pswitch_12
    const-string v0, "builtin"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public blacklist addDependency(Landroid/content/pm/SharedLibraryInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/content/pm/SharedLibraryInfo;

    .line 347
    if-nez p1, :cond_3

    .line 351
    return-void

    .line 353
    :cond_3
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    if-nez v0, :cond_e

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    .line 356
    :cond_e
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public blacklist clearDependencies()V
    .registers 2

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    .line 366
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllCodePaths()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    return-object v0

    .line 327
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCertDigests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCertDigests:Ljava/util/List;

    if-nez v0, :cond_9

    .line 473
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 475
    :cond_9
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCertDigests:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDeclaringPackage()Landroid/content/pm/VersionedPackage;
    .registers 2

    .line 435
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    return-object v0
.end method

.method public blacklist getDependencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDependentPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    if-nez v0, :cond_9

    .line 447
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 449
    :cond_9
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLongVersion()J
    .registers 3

    .line 398
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    return-wide v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOptionalDependentPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    if-nez v0, :cond_9

    .line 460
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 462
    :cond_9
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .registers 2

    .line 296
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 264
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    return v0
.end method

.method public whitelist getVersion()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    goto :goto_11

    :cond_b
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    :goto_11
    long-to-int v0, v0

    return v0
.end method

.method public greylist isBuiltin()Z
    .registers 2

    .line 405
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist isDynamic()Z
    .registers 3

    .line 412
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist isNative()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    return v0
.end method

.method public blacklist isSdk()Z
    .registers 3

    .line 426
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist isStatic()Z
    .registers 3

    .line 419
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist setAllCodePaths(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 337
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    .line 338
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedLibraryInfo{name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    invoke-static {v1}, Landroid/content/pm/SharedLibraryInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependentPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 487
    const-string v1, " has dependents"

    goto :goto_3c

    :cond_3a
    const-string v1, ""

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 492
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    if-eqz v0, :cond_26

    .line 495
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    iget-object v1, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    goto :goto_2a

    .line 498
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    :goto_2a
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 501
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 502
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 504
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 505
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 506
    iget-boolean v0, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 507
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 508
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCertDigests:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 509
    return-void
.end method
