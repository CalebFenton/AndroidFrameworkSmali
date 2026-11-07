.class public Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
.source "ParsedMainComponentImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl$IntentMatchingFlags;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INTENT_MATCHING_FLAGS_ALLOW_NULL_ACTION:I = 0x4

.field public static final blacklist INTENT_MATCHING_FLAGS_ENFORCE_INTENT_FILTER:I = 0x2

.field public static final blacklist INTENT_MATCHING_FLAGS_NONE:I = 0x1


# instance fields
.field private blacklist attributionTags:[Ljava/lang/String;

.field private blacklist directBootAware:Z

.field private blacklist enabled:Z

.field private blacklist exported:Z

.field private blacklist mIntentMatchingFlags:I

.field private blacklist order:I

.field private blacklist processName:Ljava/lang/String;

.field private blacklist splitName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 152
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 77
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 142
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->mIntentMatchingFlags:I

    .line 150
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V
    .registers 3
    .param p1, "other"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 81
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    .line 82
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    .line 83
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 84
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isExported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    .line 85
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    .line 86
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    .line 87
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZZILjava/lang/String;[Ljava/lang/String;I)V
    .registers 10
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "directBootAware"    # Z
    .param p3, "enabled"    # Z
    .param p4, "exported"    # Z
    .param p5, "order"    # I
    .param p6, "splitName"    # Ljava/lang/String;
    .param p7, "attributionTags"    # [Ljava/lang/String;
    .param p8, "intentMatchingFlags"    # I

    .line 211
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 212
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    .line 213
    iput-boolean p2, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    .line 214
    iput-boolean p3, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 215
    iput-boolean p4, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    .line 216
    iput p5, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    .line 217
    iput-object p6, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    .line 218
    iput-object p7, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    .line 219
    iput p8, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->mIntentMatchingFlags:I

    .line 222
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    return-void
.end method

.method public static blacklist intentMatchingFlagsToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 191
    packed-switch p0, :pswitch_data_12

    .line 198
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :pswitch_8
    const-string v0, "INTENT_MATCHING_FLAGS_ALLOW_NULL_ACTION"

    return-object v0

    .line 195
    :pswitch_b
    const-string v0, "INTENT_MATCHING_FLAGS_ENFORCE_INTENT_FILTER"

    return-object v0

    .line 193
    :pswitch_e
    const-string v0, "INTENT_MATCHING_FLAGS_NONE"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAttributionTags()[Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public blacklist getClassName()Ljava/lang/String;
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIntentMatchingFlags()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->mIntentMatchingFlags:I

    return v0
.end method

.method public blacklist getOrder()I
    .registers 2

    .line 246
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    return v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitName()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isDirectBootAware()Z
    .registers 2

    .line 231
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    return v0
.end method

.method public blacklist isExported()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    return v0
.end method

.method public varargs blacklist setAttributionTags([Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # [Ljava/lang/String;

    .line 286
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method public blacklist setDirectBootAware(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 256
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    .line 257
    return-object p0
.end method

.method public blacklist setEnabled(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 262
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 263
    return-object p0
.end method

.method public blacklist setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 268
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    .line 269
    return-object p0
.end method

.method public blacklist setIntentMatchingFlags(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .registers 2
    .param p1, "intentMatchingFlags"    # I

    .line 113
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->mIntentMatchingFlags:I

    .line 114
    return-object p0
.end method

.method public blacklist setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # I

    .line 274
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    .line 275
    return-object p0
.end method

.method public blacklist setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public blacklist setSplitName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 280
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 131
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 133
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->mIntentMatchingFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return-void
.end method
