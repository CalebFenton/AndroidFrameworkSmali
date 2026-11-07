.class public final Landroid/media/Session2Token;
.super Ljava/lang/Object;
.source "Session2Token.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Session2Token$TokenType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/Session2Token;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "Session2Token"

.field public static final whitelist TYPE_SESSION:I = 0x0

.field public static final whitelist TYPE_SESSION_SERVICE:I = 0x1


# instance fields
.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mServiceName:Ljava/lang/String;

.field private final blacklist mSessionLink:Landroid/media/Session2Link;

.field private final blacklist mType:I

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/media/Session2Token$1;

    invoke-direct {v0}, Landroid/media/Session2Token$1;-><init>()V

    sput-object v0, Landroid/media/Session2Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/String;Landroid/media/Session2Link;Landroid/os/Bundle;)V
    .registers 6

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Landroid/media/Session2Token;->mUid:I

    .line 128
    iput p2, p0, Landroid/media/Session2Token;->mType:I

    .line 129
    iput-object p3, p0, Landroid/media/Session2Token;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Landroid/media/Session2Token;->mServiceName:Ljava/lang/String;

    .line 131
    iput-object p1, p0, Landroid/media/Session2Token;->mComponentName:Landroid/content/ComponentName;

    .line 132
    iput-object p4, p0, Landroid/media/Session2Token;->mSessionLink:Landroid/media/Session2Link;

    .line 133
    iput-object p5, p0, Landroid/media/Session2Token;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_54

    if-eqz p2, :cond_4c

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/Session2Token;->getUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    .line 112
    const-string v1, "android.media.MediaSession2Service"

    invoke-static {p1, v1, p2}, Landroid/media/Session2Token;->isInterfaceDeclared(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t implement MediaSession2Service."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Session2Token"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_31
    iput-object p2, p0, Landroid/media/Session2Token;->mComponentName:Landroid/content/ComponentName;

    .line 117
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/Session2Token;->mPackageName:Ljava/lang/String;

    .line 118
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/Session2Token;->mServiceName:Ljava/lang/String;

    .line 119
    iput v0, p0, Landroid/media/Session2Token;->mUid:I

    const/4 p1, 0x1

    .line 120
    iput p1, p0, Landroid/media/Session2Token;->mType:I

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Landroid/media/Session2Token;->mSessionLink:Landroid/media/Session2Link;

    .line 122
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/media/Session2Token;->mExtras:Landroid/os/Bundle;

    return-void

    .line 106
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "serviceComponent shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/Session2Token;->mUid:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/Session2Token;->mType:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Session2Token;->mPackageName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Session2Token;->mServiceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/Session2Link;

    iput-object v0, p0, Landroid/media/Session2Token;->mSessionLink:Landroid/media/Session2Link;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Session2Token;->mComponentName:Landroid/content/ComponentName;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 145
    const-string v0, "Session2Token"

    if-nez p1, :cond_3e

    .line 146
    const-string p1, "extras shouldn\'t be null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_4b

    .line 148
    :cond_3e
    invoke-static {p1}, Landroid/media/MediaSession2;->hasCustomParcelable(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 149
    const-string p1, "extras contain custom parcelable. Ignoring."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 152
    :cond_4b
    :goto_4b
    iput-object p1, p0, Landroid/media/Session2Token;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method private static blacklist getUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 267
    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_7} :catch_8

    return p0

    .line 269
    :catch_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist isInterfaceDeclared(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 6

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x80

    .line 248
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3a

    move v0, p1

    .line 251
    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 252
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_37

    .line 253
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_29

    goto :goto_37

    .line 256
    :cond_29
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 257
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 p0, 0x1

    return p0

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_3a
    return p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 178
    instance-of v0, p1, Landroid/media/Session2Token;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 181
    :cond_6
    check-cast p1, Landroid/media/Session2Token;

    .line 182
    iget v0, p0, Landroid/media/Session2Token;->mUid:I

    iget v2, p1, Landroid/media/Session2Token;->mUid:I

    if-ne v0, v2, :cond_34

    iget-object v0, p0, Landroid/media/Session2Token;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/media/Session2Token;->mPackageName:Ljava/lang/String;

    .line 183
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/media/Session2Token;->mServiceName:Ljava/lang/String;

    iget-object v2, p1, Landroid/media/Session2Token;->mServiceName:Ljava/lang/String;

    .line 184
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget v0, p0, Landroid/media/Session2Token;->mType:I

    iget v2, p1, Landroid/media/Session2Token;->mType:I

    if-ne v0, v2, :cond_34

    iget-object p0, p0, Landroid/media/Session2Token;->mSessionLink:Landroid/media/Session2Link;

    iget-object p1, p1, Landroid/media/Session2Token;->mSessionLink:Landroid/media/Session2Link;

    .line 186
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 233
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Landroid/media/Session2Token;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 1

    .line 207
    iget-object p0, p0, Landroid/media/Session2Token;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Landroid/media/Session2Token;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getSessionLink()Landroid/media/Session2Link;
    .registers 1

    .line 237
    iget-object p0, p0, Landroid/media/Session2Token;->mSessionLink:Landroid/media/Session2Link;

    return-object p0
.end method

.method public whitelist getType()I
    .registers 1

    .line 224
    iget p0, p0, Landroid/media/Session2Token;->mType:I

    return p0
.end method

.method public whitelist getUid()I
    .registers 1

    .line 199
    iget p0, p0, Landroid/media/Session2Token;->mUid:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 173
    iget v0, p0, Landroid/media/Session2Token;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/Session2Token;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Session2Token;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/Session2Token;->mServiceName:Ljava/lang/String;

    iget-object p0, p0, Landroid/media/Session2Token;->mSessionLink:Landroid/media/Session2Link;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session2Token {pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/Session2Token;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/Session2Token;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/Session2Token;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Session2Link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/Session2Token;->mSessionLink:Landroid/media/Session2Link;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 157
    iget v0, p0, Landroid/media/Session2Token;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Landroid/media/Session2Token;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v0, p0, Landroid/media/Session2Token;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/media/Session2Token;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Landroid/media/Session2Token;->mSessionLink:Landroid/media/Session2Link;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    iget-object p2, p0, Landroid/media/Session2Token;->mComponentName:Landroid/content/ComponentName;

    if-nez p2, :cond_20

    const-string p2, ""

    goto :goto_24

    :cond_20
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    :goto_24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Landroid/media/Session2Token;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
