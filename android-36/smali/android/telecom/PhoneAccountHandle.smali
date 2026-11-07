.class public final Landroid/telecom/PhoneAccountHandle;
.super Ljava/lang/Object;
.source "PhoneAccountHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TELEPHONY_COMPONENT_NAME:Landroid/content/ComponentName;


# instance fields
.field private final greylist-max-p mComponentName:Landroid/content/ComponentName;

.field private final greylist-max-p mId:Ljava/lang/String;

.field private final greylist-max-o mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/telecom/PhoneAccountHandle;->TELEPHONY_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 216
    new-instance v0, Landroid/telecom/PhoneAccountHandle$1;

    invoke-direct {v0}, Landroid/telecom/PhoneAccountHandle$1;-><init>()V

    sput-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;

    .line 83
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 84
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-direct {p0, p1, p3}, Landroid/telecom/PhoneAccountHandle;->checkParameters(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 110
    iput-object p1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    .line 111
    iput-object p2, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    .line 113
    return-void
.end method

.method private constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 231
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 233
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 231
    invoke-direct {p0, v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 234
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccountHandle-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist areFromSamePackage(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;)Z
    .registers 5
    .param p0, "a"    # Landroid/telecom/PhoneAccountHandle;
    .param p1, "b"    # Landroid/telecom/PhoneAccountHandle;

    .line 248
    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    .line 249
    .local v1, "aPackageName":Ljava/lang/String;
    :goto_d
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "bPackageName":Ljava/lang/String;
    :cond_17
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private greylist-max-o checkParameters(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 206
    const-string v0, "PhoneAccountHandle"

    if-nez p1, :cond_e

    .line 207
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "PhoneAccountHandle has been created with null ComponentName!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :cond_e
    if-nez p2, :cond_1a

    .line 211
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "PhoneAccountHandle has been created with null UserHandle!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    :cond_1a
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 181
    if-eqz p1, :cond_3b

    instance-of v0, p1, Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 183
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 183
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 185
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 186
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    .line 181
    :goto_3c
    return v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 155
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->TELEPHONY_COMPONENT_NAME:Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 167
    iget-object v2, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 171
    :cond_21
    iget-object v2, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 200
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 201
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 203
    return-void
.end method
