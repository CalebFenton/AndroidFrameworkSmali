.class public Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
.source "ParsedPermissionImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedPermission;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field private blacklist backgroundPermission:Ljava/lang/String;

.field private blacklist group:Ljava/lang/String;

.field private blacklist knownCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

.field private blacklist protectionLevel:I

.field private blacklist requestRes:I

.field private blacklist tree:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 45
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 128
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 62
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    .line 122
    const-class v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 124
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 125
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIZLcom/android/internal/pm/pkg/component/ParsedPermissionGroup;Ljava/util/Set;)V
    .registers 8
    .param p1, "backgroundPermission"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "requestRes"    # I
    .param p4, "protectionLevel"    # I
    .param p5, "tree"    # Z
    .param p6, "parsedPermissionGroup"    # Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p7, "knownCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    .line 167
    iput p3, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    .line 168
    iput p4, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    .line 169
    iput-boolean p5, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    .line 170
    iput-object p6, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 171
    iput-object p7, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 174
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBackgroundPermission()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroup()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKnownCerts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    :goto_b
    return-object v0
.end method

.method public blacklist getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    return-object v0
.end method

.method public blacklist getProtectionLevel()I
    .registers 2

    .line 193
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    return v0
.end method

.method public blacklist getRequestRes()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    return v0
.end method

.method public blacklist isTree()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    return v0
.end method

.method public blacklist setBackgroundPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 203
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public blacklist setGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 3
    .param p1, "group"    # Ljava/lang/String;

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method protected blacklist setKnownCert(Ljava/lang/String;)V
    .registers 3
    .param p1, "knownCert"    # Ljava/lang/String;

    .line 76
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 77
    return-void
.end method

.method public blacklist setKnownCerts(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;"
        }
    .end annotation

    .line 233
    .local p1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 234
    return-object p0
.end method

.method protected blacklist setKnownCerts([Ljava/lang/String;)V
    .registers 7
    .param p1, "knownCerts"    # [Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 81
    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    .line 82
    .local v2, "knownCert":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v2    # "knownCert":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 84
    :cond_1b
    return-void
.end method

.method public blacklist setParsedPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2
    .param p1, "value"    # Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 227
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 228
    return-object p0
.end method

.method public blacklist setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2
    .param p1, "value"    # I

    .line 215
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    .line 216
    return-object p0
.end method

.method public blacklist setRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2
    .param p1, "value"    # I

    .line 209
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    .line 210
    return-object p0
.end method

.method public blacklist setTree(Z)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 221
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    .line 222
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 112
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 113
    return-void
.end method
