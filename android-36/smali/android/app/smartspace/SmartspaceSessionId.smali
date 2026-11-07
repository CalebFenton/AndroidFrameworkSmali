.class public final Landroid/app/smartspace/SmartspaceSessionId;
.super Ljava/lang/Object;
.source "SmartspaceSessionId.java"

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
            "Landroid/app/smartspace/SmartspaceSessionId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/app/smartspace/SmartspaceSessionId$1;

    invoke-direct {v0}, Landroid/app/smartspace/SmartspaceSessionId$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceSessionId;->mId:Ljava/lang/String;

    .line 54
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceSessionId;->mUserHandle:Landroid/os/UserHandle;

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/smartspace/SmartspaceSessionId-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/smartspace/SmartspaceSessionId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceSessionId;->mId:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroid/app/smartspace/SmartspaceSessionId;->mUserHandle:Landroid/os/UserHandle;

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 77
    :cond_14
    move-object v0, p1

    check-cast v0, Landroid/app/smartspace/SmartspaceSessionId;

    .line 78
    .local v0, "other":Landroid/app/smartspace/SmartspaceSessionId;
    iget-object v2, p0, Landroid/app/smartspace/SmartspaceSessionId;->mId:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/smartspace/SmartspaceSessionId;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceSessionId;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, v0, Landroid/app/smartspace/SmartspaceSessionId;->mUserHandle:Landroid/os/UserHandle;

    if-ne v2, v3, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSessionId;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSessionId;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 91
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSessionId;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSessionId;->mUserHandle:Landroid/os/UserHandle;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartspaceSessionId{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSessionId;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSessionId;->mUserHandle:Landroid/os/UserHandle;

    .line 85
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSessionId;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSessionId;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 103
    return-void
.end method
