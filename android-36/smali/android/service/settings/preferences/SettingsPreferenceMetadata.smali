.class public final Landroid/service/settings/preferences/SettingsPreferenceMetadata;
.super Ljava/lang/Object;
.source "SettingsPreferenceMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;,
        Landroid/service/settings/preferences/SettingsPreferenceMetadata$WriteSensitivity;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEEPLINK_ONLY:I = 0x2

.field public static final whitelist EXPECT_POST_CONFIRMATION:I = 0x1

.field public static final whitelist NO_DIRECT_ACCESS:I = 0x3

.field public static final whitelist NO_SENSITIVITY:I


# instance fields
.field private final blacklist mAvailable:Z

.field private final blacklist mBreadcrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEnabled:Z

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mKey:Ljava/lang/String;

.field private final blacklist mLaunchIntent:Landroid/content/Intent;

.field private final blacklist mReadPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRestricted:Z

.field private final blacklist mScreenKey:Ljava/lang/String;

.field private final blacklist mSensitivity:I

.field private final blacklist mSummary:Ljava/lang/String;

.field private final blacklist mTitle:Ljava/lang/String;

.field private final blacklist mWritable:Z

.field private final blacklist mWritePermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 291
    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$1;

    invoke-direct {v0}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$1;-><init>()V

    sput-object v0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mKey:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mScreenKey:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mTitle:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSummary:Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mBreadcrumbs:Ljava/util/List;

    .line 247
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mBreadcrumbs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mReadPermissions:Ljava/util/List;

    .line 249
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mReadPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritePermissions:Ljava/util/List;

    .line 251
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritePermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mEnabled:Z

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mAvailable:Z

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritable:Z

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mRestricted:Z

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSensitivity:I

    .line 257
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mLaunchIntent:Landroid/content/Intent;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/service/settings/preferences/SettingsPreferenceMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mExtras:Landroid/os/Bundle;

    .line 260
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/settings/preferences/SettingsPreferenceMetadata-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmKey(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mKey:Ljava/lang/String;

    .line 226
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmScreenKey(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mScreenKey:Ljava/lang/String;

    .line 227
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmTitle(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mTitle:Ljava/lang/String;

    .line 228
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmSummary(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSummary:Ljava/lang/String;

    .line 229
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmBreadcrumbs(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mBreadcrumbs:Ljava/util/List;

    .line 230
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmReadPermissions(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mReadPermissions:Ljava/util/List;

    .line 231
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmWritePermissions(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritePermissions:Ljava/util/List;

    .line 232
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmEnabled(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mEnabled:Z

    .line 233
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmAvailable(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mAvailable:Z

    .line 234
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmWritable(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritable:Z

    .line 235
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmRestricted(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mRestricted:Z

    .line 236
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmSensitivity(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSensitivity:I

    .line 237
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmLaunchIntent(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mLaunchIntent:Landroid/content/Intent;

    .line 238
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmExtras(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/service/settings/preferences/SettingsPreferenceMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mExtras:Landroid/os/Bundle;

    .line 239
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;Landroid/service/settings/preferences/SettingsPreferenceMetadata-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata;-><init>(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBreadcrumbs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mBreadcrumbs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLaunchIntent()Landroid/content/Intent;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getReadPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mReadPermissions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getScreenKey()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mScreenKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSummary()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWritePermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritePermissions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getWriteSensitivity()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSensitivity:I

    return v0
.end method

.method public whitelist isAvailable()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mAvailable:Z

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mEnabled:Z

    return v0
.end method

.method public whitelist isRestricted()Z
    .registers 2

    .line 157
    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mRestricted:Z

    return v0
.end method

.method public whitelist isWritable()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritable:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 271
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mScreenKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mBreadcrumbs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 276
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mReadPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 277
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritePermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 278
    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 281
    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSensitivity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 284
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 285
    return-void
.end method
