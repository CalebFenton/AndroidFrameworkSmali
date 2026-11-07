.class public Landroid/content/pm/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist deniedPermissions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist gwpAsanMode:I

.field public blacklist memtagMode:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist nativeHeapZeroInitialized:I

.field public blacklist useEmbeddedDex:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 141
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;

    .line 142
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    .line 145
    sget-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_17

    .line 146
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    .line 206
    :cond_17
    new-instance v0, Landroid/content/pm/ProcessInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ProcessInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ProcessInfo;)V
    .registers 3
    .param p1, "orig"    # Landroid/content/pm/ProcessInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget-object v0, p1, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    iput-object v0, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 75
    iget v0, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 76
    iget v0, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 77
    iget v0, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    .line 78
    iget-boolean v0, p1, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    iput-boolean v0, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    .line 79
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 180
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 181
    .local v1, "_useEmbeddedDex":Z
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "_name":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    invoke-interface {v3, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 183
    .local v3, "_deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 184
    .local v4, "_gwpAsanMode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 185
    .local v5, "_memtagMode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 187
    .local v6, "_nativeHeapZeroInitialized":I
    iput-object v2, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    .line 188
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v9, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 190
    iput-object v3, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 191
    iput v4, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 192
    const-class v7, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    iget v8, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-static {v7, v9, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 194
    iput v5, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 195
    const-class v7, Landroid/content/pm/ApplicationInfo$MemtagMode;

    iget v8, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-static {v7, v9, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 197
    iput v6, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    .line 198
    const-class v7, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    iget v8, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    invoke-static {v7, v9, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 200
    iput-boolean v1, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    .line 203
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/ArraySet;IIIZ)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "gwpAsanMode"    # I
    .param p4, "memtagMode"    # I
    .param p5, "nativeHeapZeroInitialized"    # I
    .param p6, "useEmbeddedDex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 121
    .local p2, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    .line 123
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 125
    iput-object p2, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 126
    iput p3, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 127
    const-class v0, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 129
    iput p4, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 130
    const-class v0, Landroid/content/pm/ApplicationInfo$MemtagMode;

    invoke-static {v0, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 132
    iput p5, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    .line 133
    const-class v0, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    invoke-static {v0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 135
    iput-boolean p6, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    .line 138
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 159
    :cond_8
    iget-object v1, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 160
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    iget-object v1, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    sget-object v1, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 163
    iget v1, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v1, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v1, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return-void
.end method
