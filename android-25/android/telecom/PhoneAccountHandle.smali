.class public final Landroid/telecom/PhoneAccountHandle;
.super Ljava/lang/Object;
.source "PhoneAccountHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/PhoneAccountHandle$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mId:Ljava/lang/String;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 155
    new-instance v0, Landroid/telecom/PhoneAccountHandle$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/PhoneAccountHandle$1;-><init>()V

    #@5
    sput-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    #@7
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    invoke-direct {p0, p1, p3}, Landroid/telecom/PhoneAccountHandle;->checkParameters(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    #@6
    .line 58
    iput-object p1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    #@8
    .line 59
    iput-object p2, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    #@a
    .line 60
    iput-object p3, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    #@c
    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 168
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/ComponentName;

    #@8
    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 170
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/os/UserHandle;

    #@14
    .line 168
    invoke-direct {p0, v0, v2, v1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    #@17
    .line 167
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private checkParameters(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 145
    if-nez p1, :cond_0

    #@2
    .line 146
    const-string/jumbo v0, "PhoneAccountHandle"

    #@5
    new-instance v1, Ljava/lang/Exception;

    #@7
    const-string/jumbo v2, "PhoneAccountHandle has been created with null ComponentName!"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 149
    :cond_0
    if-nez p2, :cond_1

    #@12
    .line 150
    const-string/jumbo v0, "PhoneAccountHandle"

    #@15
    new-instance v1, Ljava/lang/Exception;

    #@17
    const-string/jumbo v2, "PhoneAccountHandle has been created with null UserHandle!"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 144
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 120
    if-eqz p1, :cond_0

    #@2
    .line 121
    instance-of v0, p1, Landroid/telecom/PhoneAccountHandle;

    #@4
    .line 120
    if-eqz v0, :cond_0

    #@6
    move-object v0, p1

    #@7
    .line 122
    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    #@9
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@c
    move-result-object v0

    #@d
    .line 123
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@10
    move-result-object v1

    #@11
    .line 122
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    .line 120
    if-eqz v0, :cond_0

    #@17
    move-object v0, p1

    #@18
    .line 124
    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    #@1a
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .line 120
    if-eqz v0, :cond_0

    #@28
    .line 125
    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    #@2a
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    #@31
    move-result-object v1

    #@32
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    .line 120
    :goto_0
    return v0

    #@37
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@38
    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 103
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    #@f
    const/4 v2, 0x2

    #@10
    aput-object v1, v0, v2

    #@12
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    .line 111
    const-string/jumbo v1, ", "

    #@e
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 112
    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    #@14
    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 113
    const-string/jumbo v1, ", "

    #@1f
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 114
    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    #@25
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 140
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 141
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    #@c
    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@f
    .line 138
    return-void
.end method
