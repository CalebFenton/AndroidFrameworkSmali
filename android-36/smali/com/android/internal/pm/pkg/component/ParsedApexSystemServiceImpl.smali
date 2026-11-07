.class public Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;
.super Ljava/lang/Object;
.source "ParsedApexSystemServiceImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForJarPath:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForMaxSdkVersion:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForMinSdkVersion:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForName:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist initOrder:I

.field private blacklist jarPath:Ljava/lang/String;

.field private blacklist maxSdkVersion:Ljava/lang/String;

.field private blacklist minSdkVersion:Ljava/lang/String;

.field private blacklist name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 146
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    .line 149
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_17

    .line 150
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    .line 156
    :cond_17
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 157
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForJarPath:Lcom/android/internal/util/Parcelling;

    .line 160
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForJarPath:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_2e

    .line 161
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForJarPath:Lcom/android/internal/util/Parcelling;

    .line 167
    :cond_2e
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 168
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMinSdkVersion:Lcom/android/internal/util/Parcelling;

    .line 171
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMinSdkVersion:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_45

    .line 172
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMinSdkVersion:Lcom/android/internal/util/Parcelling;

    .line 178
    :cond_45
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 179
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMaxSdkVersion:Lcom/android/internal/util/Parcelling;

    .line 182
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMaxSdkVersion:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_5c

    .line 183
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMaxSdkVersion:Lcom/android/internal/util/Parcelling;

    .line 236
    :cond_5c
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 218
    .local v0, "flg":B
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    invoke-interface {v1, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, "_name":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForJarPath:Lcom/android/internal/util/Parcelling;

    invoke-interface {v2, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    .local v2, "_jarPath":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMinSdkVersion:Lcom/android/internal/util/Parcelling;

    invoke-interface {v3, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, "_minSdkVersion":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMaxSdkVersion:Lcom/android/internal/util/Parcelling;

    invoke-interface {v4, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 222
    .local v4, "_maxSdkVersion":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 224
    .local v5, "_initOrder":I
    iput-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->name:Ljava/lang/String;

    .line 225
    const-class v6, Landroid/annotation/NonNull;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->name:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 227
    iput-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->jarPath:Ljava/lang/String;

    .line 228
    iput-object v3, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->minSdkVersion:Ljava/lang/String;

    .line 229
    iput-object v4, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->maxSdkVersion:Ljava/lang/String;

    .line 230
    iput v5, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->initOrder:I

    .line 233
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jarPath"    # Ljava/lang/String;
    .param p3, "minSdkVersion"    # Ljava/lang/String;
    .param p4, "maxSdkVersion"    # Ljava/lang/String;
    .param p5, "initOrder"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->name:Ljava/lang/String;

    .line 77
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 79
    iput-object p2, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->jarPath:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->minSdkVersion:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->maxSdkVersion:Ljava/lang/String;

    .line 82
    iput p5, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->initOrder:I

    .line 85
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInitOrder()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->initOrder:I

    return v0
.end method

.method public blacklist getJarPath()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->jarPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMaxSdkVersion()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->maxSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMinSdkVersion()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->minSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setInitOrder(I)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;
    .registers 2
    .param p1, "value"    # I

    .line 140
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->initOrder:I

    .line 141
    return-object p0
.end method

.method public blacklist setJarPath(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->jarPath:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public blacklist setMaxSdkVersion(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->maxSdkVersion:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public blacklist setMinSdkVersion(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->minSdkVersion:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->name:Ljava/lang/String;

    .line 115
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 117
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "flg":B
    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->jarPath:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 196
    :cond_8
    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->minSdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 197
    :cond_f
    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->maxSdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 198
    :cond_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 199
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 200
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForJarPath:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->jarPath:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 201
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMinSdkVersion:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->minSdkVersion:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 202
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMaxSdkVersion:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->maxSdkVersion:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 203
    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->initOrder:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return-void
.end method
