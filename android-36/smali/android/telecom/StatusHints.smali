.class public final Landroid/telecom/StatusHints;
.super Ljava/lang/Object;
.source "StatusHints.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/StatusHints;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private final greylist-max-o mLabel:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const-class v0, Landroid/telecom/StatusHints;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telecom/StatusHints;->TAG:Ljava/lang/String;

    .line 193
    new-instance v0, Landroid/telecom/StatusHints$1;

    invoke-direct {v0}, Landroid/telecom/StatusHints$1;-><init>()V

    sput-object v0, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "packageName"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "iconResId"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_c
    invoke-direct {p0, p2, v0, p4}, Landroid/telecom/StatusHints;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    .line 69
    iput-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    .line 70
    iput-object p1, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    .line 71
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    .line 208
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/StatusHints-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/StatusHints;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/telecom/StatusHints;->validateAccountIconUserBoundary(Landroid/graphics/drawable/Icon;Landroid/os/UserHandle;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    .line 59
    iput-object p3, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method public static blacklist getUserIdFromAuthority(Ljava/lang/String;I)I
    .registers 8
    .param p0, "auth"    # Ljava/lang/String;
    .param p1, "defaultUserId"    # I

    .line 174
    if-nez p0, :cond_3

    return p1

    .line 175
    :cond_3
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 176
    .local v0, "end":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    return p1

    .line 177
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "userIdString":Ljava/lang/String;
    :try_start_12
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_16} :catch_17

    return v2

    .line 180
    :catch_17
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Landroid/telecom/StatusHints;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing userId."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/16 v3, -0x2710

    return v3
.end method

.method public static blacklist validateAccountIconUserBoundary(Landroid/graphics/drawable/Icon;Landroid/os/UserHandle;)Landroid/graphics/drawable/Icon;
    .registers 5
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "callingUserHandle"    # Landroid/os/UserHandle;

    .line 153
    if-eqz p0, :cond_25

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_25

    .line 155
    :cond_10
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 156
    .local v0, "callingUserId":I
    nop

    .line 157
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v1, v0}, Landroid/telecom/StatusHints;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v1

    .line 158
    .local v1, "requestingUserId":I
    if-eq v0, v1, :cond_25

    .line 159
    const/4 v2, 0x0

    return-object v2

    .line 163
    .end local v0    # "callingUserId":I
    .end local v1    # "requestingUserId":I
    :cond_25
    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 212
    const/4 v0, 0x0

    if-eqz p1, :cond_38

    instance-of v1, p1, Landroid/telecom/StatusHints;

    if-eqz v1, :cond_38

    .line 213
    move-object v1, p1

    check-cast v1, Landroid/telecom/StatusHints;

    .line 214
    .local v1, "otherHints":Landroid/telecom/StatusHints;
    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 215
    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 216
    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    nop

    .line 214
    :goto_37
    return v0

    .line 218
    .end local v1    # "otherHints":Landroid/telecom/StatusHints;
    :cond_38
    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    iget-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getIconResId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPackageName()Landroid/content/ComponentName;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 223
    iget-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 79
    iput-object p1, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    .line 80
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 188
    iget-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 190
    iget-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 191
    return-void
.end method
