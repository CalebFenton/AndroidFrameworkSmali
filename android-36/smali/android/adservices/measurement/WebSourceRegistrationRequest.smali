.class public final Landroid/adservices/measurement/WebSourceRegistrationRequest;
.super Ljava/lang/Object;
.source "WebSourceRegistrationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ANDROID_APP_SCHEME:Ljava/lang/String; = "android-app"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/measurement/WebSourceRegistrationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist WEB_SOURCE_PARAMS_MAX_COUNT:I = 0x50


# instance fields
.field private final blacklist mAppDestination:Landroid/net/Uri;

.field private final blacklist mInputEvent:Landroid/view/InputEvent;

.field private final blacklist mTopOriginUri:Landroid/net/Uri;

.field private final blacklist mVerifiedDestination:Landroid/net/Uri;

.field private final blacklist mWebDestination:Landroid/net/Uri;

.field private final blacklist mWebSourceParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/measurement/WebSourceParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smvalidateScheme(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/adservices/measurement/WebSourceRegistrationRequest;->validateScheme(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/adservices/measurement/WebSourceRegistrationRequest$1;

    invoke-direct {v0}, Landroid/adservices/measurement/WebSourceRegistrationRequest$1;-><init>()V

    sput-object v0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->-$$Nest$fgetmWebSourceParams(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebSourceParams:Ljava/util/List;

    .line 83
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->-$$Nest$fgetmInputEvent(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/view/InputEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    .line 84
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->-$$Nest$fgetmTopOriginUri(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mTopOriginUri:Landroid/net/Uri;

    .line 85
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->-$$Nest$fgetmAppDestination(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mAppDestination:Landroid/net/Uri;

    .line 86
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->-$$Nest$fgetmWebDestination(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebDestination:Landroid/net/Uri;

    .line 87
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->-$$Nest$fgetmVerifiedDestination(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mVerifiedDestination:Landroid/net/Uri;

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;Landroid/adservices/measurement/WebSourceRegistrationRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/WebSourceRegistrationRequest;-><init>(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "sourceRegistrations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/adservices/measurement/WebSourceParams;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_1b

    .line 94
    const-class v1, Landroid/adservices/measurement/WebSourceParams;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_26

    .line 96
    :cond_1b
    const-class v1, Landroid/adservices/measurement/WebSourceParams;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/adservices/measurement/WebSourceParams;

    .line 96
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 101
    :goto_26
    iput-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebSourceParams:Ljava/util/List;

    .line 102
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mTopOriginUri:Landroid/net/Uri;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    .line 104
    sget-object v1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    iput-object v1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    goto :goto_46

    .line 106
    :cond_44
    iput-object v2, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    .line 108
    :goto_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 109
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mAppDestination:Landroid/net/Uri;

    goto :goto_59

    .line 111
    :cond_57
    iput-object v2, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mAppDestination:Landroid/net/Uri;

    .line 113
    :goto_59
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 114
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebDestination:Landroid/net/Uri;

    goto :goto_6c

    .line 116
    :cond_6a
    iput-object v2, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebDestination:Landroid/net/Uri;

    .line 118
    :goto_6c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 119
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mVerifiedDestination:Landroid/net/Uri;

    goto :goto_7f

    .line 121
    :cond_7d
    iput-object v2, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mVerifiedDestination:Landroid/net/Uri;

    .line 123
    :goto_7f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/measurement/WebSourceRegistrationRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/WebSourceRegistrationRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist validateScheme(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 352
    return-void

    .line 350
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a scheme."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 128
    :cond_4
    instance-of v1, p1, Landroid/adservices/measurement/WebSourceRegistrationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 129
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/measurement/WebSourceRegistrationRequest;

    .line 130
    .local v1, "that":Landroid/adservices/measurement/WebSourceRegistrationRequest;
    iget-object v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebSourceParams:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebSourceParams:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mTopOriginUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mTopOriginUri:Landroid/net/Uri;

    .line 131
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    iget-object v4, v1, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    .line 132
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mAppDestination:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mAppDestination:Landroid/net/Uri;

    .line 133
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebDestination:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebDestination:Landroid/net/Uri;

    .line 134
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mVerifiedDestination:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mVerifiedDestination:Landroid/net/Uri;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v2

    .line 130
    :goto_4b
    return v0
.end method

.method public whitelist getAppDestination()Landroid/net/Uri;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mAppDestination:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getInputEvent()Landroid/view/InputEvent;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    return-object v0
.end method

.method public whitelist getSourceParams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/measurement/WebSourceParams;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebSourceParams:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTopOriginUri()Landroid/net/Uri;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mTopOriginUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getVerifiedDestination()Landroid/net/Uri;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mVerifiedDestination:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getWebDestination()Landroid/net/Uri;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebDestination:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 140
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebSourceParams:Ljava/util/List;

    iget-object v1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mTopOriginUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    iget-object v3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mAppDestination:Landroid/net/Uri;

    iget-object v4, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebDestination:Landroid/net/Uri;

    iget-object v5, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mVerifiedDestination:Landroid/net/Uri;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 198
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebSourceParams:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mTopOriginUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 202
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 203
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 204
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/InputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1f

    .line 206
    :cond_1c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 208
    :goto_1f
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mAppDestination:Landroid/net/Uri;

    if-eqz v0, :cond_2c

    .line 209
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 210
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mAppDestination:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2f

    .line 212
    :cond_2c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 214
    :goto_2f
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebDestination:Landroid/net/Uri;

    if-eqz v0, :cond_3c

    .line 215
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 216
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mWebDestination:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3f

    .line 218
    :cond_3c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 220
    :goto_3f
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mVerifiedDestination:Landroid/net/Uri;

    if-eqz v0, :cond_4c

    .line 221
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 222
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequest;->mVerifiedDestination:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4f

    .line 224
    :cond_4c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 226
    :goto_4f
    return-void
.end method
