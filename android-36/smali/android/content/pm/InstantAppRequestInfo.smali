.class public final Landroid/content/pm/InstantAppRequestInfo;
.super Ljava/lang/Object;
.source "InstantAppRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/InstantAppRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHostDigestPrefix:[I

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mRequesterInstantApp:Z

.field private final blacklist mToken:Ljava/lang/String;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 205
    new-instance v0, Landroid/content/pm/InstantAppRequestInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppRequestInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;[ILandroid/os/UserHandle;ZLjava/lang/String;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "hostDigestPrefix"    # [I
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "requesterInstantApp"    # Z
    .param p5, "token"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    .line 99
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 101
    iput-object p2, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    .line 102
    iput-object p3, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    .line 103
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 105
    iput-boolean p4, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    .line 106
    iput-object p5, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    .line 107
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 183
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 184
    .local v1, "requesterInstantApp":Z
    :goto_e
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 185
    .local v2, "intent":Landroid/content/Intent;
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-nez v3, :cond_1d

    move-object v3, v4

    goto :goto_21

    :cond_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 186
    .local v3, "hostDigestPrefix":[I
    :goto_21
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 187
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "token":Ljava/lang/String;
    iput-object v2, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    .line 190
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 192
    iput-object v3, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    .line 193
    iput-object v5, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    .line 194
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 196
    iput-boolean v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    .line 197
    iput-object v6, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    .line 198
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHostDigestPrefix()[I
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getToken()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist isRequesterInstantApp()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 163
    :cond_8
    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 164
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 166
    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 167
    :cond_20
    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    return-void
.end method
