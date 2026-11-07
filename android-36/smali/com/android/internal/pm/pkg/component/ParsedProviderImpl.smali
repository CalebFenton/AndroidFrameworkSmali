.class public Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
.source "ParsedProviderImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedProvider;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist authority:Ljava/lang/String;

.field private blacklist forceUriPermissions:Z

.field private blacklist grantUriPermissions:Z

.field private blacklist initOrder:I

.field private blacklist multiProcess:Z

.field private blacklist pathPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist readPermission:Ljava/lang/String;

.field private blacklist syncable:Z

.field private blacklist uriPermissionPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist writePermission:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 156
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    .line 62
    nop

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 64
    nop

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 139
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 62
    nop

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 64
    nop

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    .line 145
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    .line 151
    sget-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 152
    sget-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 153
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/pm/pkg/component/ParsedProvider;)V
    .registers 4
    .param p1, "other"    # Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 62
    nop

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 64
    nop

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 70
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    .line 71
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    .line 72
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    .line 73
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    .line 74
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    .line 75
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    .line 76
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    .line 77
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZILjava/util/List;Ljava/util/List;)V
    .registers 13
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "syncable"    # Z
    .param p3, "readPermission"    # Ljava/lang/String;
    .param p4, "writePermission"    # Ljava/lang/String;
    .param p5, "grantUriPermissions"    # Z
    .param p6, "forceUriPermissions"    # Z
    .param p7, "multiProcess"    # Z
    .param p8, "initOrder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZI",
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p9, "uriPermissionPatterns":Ljava/util/List;, "Ljava/util/List<Landroid/os/PatternMatcher;>;"
    .local p10, "pathPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PathPermission;>;"
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    .line 62
    nop

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 64
    nop

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 196
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    .line 197
    iput-boolean p2, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    .line 198
    iput-object p3, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    .line 199
    iput-object p4, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    .line 200
    iput-boolean p5, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    .line 201
    iput-boolean p6, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    .line 202
    iput-boolean p7, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    .line 203
    iput p8, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    .line 204
    iput-object p9, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 205
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 207
    iput-object p10, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 208
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    return-void
.end method


# virtual methods
.method public blacklist addPathPermission(Landroid/content/pm/PathPermission;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .registers 3
    .param p1, "value"    # Landroid/content/pm/PathPermission;

    .line 104
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 105
    return-object p0
.end method

.method public blacklist addUriPermissionPattern(Landroid/os/PatternMatcher;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .registers 3
    .param p1, "value"    # Landroid/os/PatternMatcher;

    .line 98
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 99
    return-object p0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAuthority()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInitOrder()I
    .registers 2

    .line 251
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    return v0
.end method

.method public blacklist getPathPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getReadPermission()Ljava/lang/String;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUriPermissionPatterns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getWritePermission()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isForceUriPermissions()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    return v0
.end method

.method public blacklist isGrantUriPermissions()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    return v0
.end method

.method public blacklist isMultiProcess()Z
    .registers 2

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    return v0
.end method

.method public blacklist isSyncable()Z
    .registers 2

    .line 221
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    return v0
.end method

.method public blacklist setAuthority(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 266
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public blacklist setForceUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 284
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    .line 285
    return-object p0
.end method

.method public blacklist setGrantUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 278
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    .line 279
    return-object p0
.end method

.method public blacklist setInitOrder(I)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .registers 2
    .param p1, "value"    # I

    .line 296
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    .line 297
    return-object p0
.end method

.method public blacklist setMultiProcess(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 290
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    .line 291
    return-object p0
.end method

.method public blacklist setReadPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .registers 3
    .param p1, "readPermission"    # Ljava/lang/String;

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 85
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public blacklist setSyncable(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 272
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    .line 273
    return-object p0
.end method

.method public blacklist setWritePermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .registers 3
    .param p1, "writePermission"    # Ljava/lang/String;

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Provider{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 125
    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 128
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 129
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 130
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 133
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 136
    return-void
.end method
