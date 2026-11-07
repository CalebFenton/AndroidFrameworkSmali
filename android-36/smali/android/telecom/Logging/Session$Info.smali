.class public Landroid/telecom/Logging/Session$Info;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/Logging/Session$Info;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist methodPath:Ljava/lang/String;

.field public final blacklist ownerInfo:Ljava/lang/String;

.field public final blacklist sessionId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/telecom/Logging/Session$Info$1;

    invoke-direct {v0}, Landroid/telecom/Logging/Session$Info$1;-><init>()V

    sput-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Landroid/telecom/Logging/Session$Info;->ownerInfo:Ljava/lang/String;

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/Logging/Session$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist getExternalInfo(Landroid/telecom/Logging/Session;Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .registers 6
    .param p0, "s"    # Landroid/telecom/Logging/Session;
    .param p1, "ownerInfo"    # Ljava/lang/String;

    .line 91
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 95
    :cond_24
    if-eqz p1, :cond_28

    move-object v0, p1

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    nop

    .line 100
    .local v0, "newInfo":Ljava/lang/String;
    new-instance v1, Landroid/telecom/Logging/Session$Info;

    invoke-static {p0}, Landroid/telecom/Logging/Session;->-$$Nest$mgetFullSessionId(Landroid/telecom/Logging/Session;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Landroid/telecom/Log;->DEBUG:Z

    if-nez v3, :cond_3f

    .line 101
    invoke-static {p0}, Landroid/telecom/Logging/Session;->-$$Nest$misSessionExternal(Landroid/telecom/Logging/Session;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const/4 v3, 0x1

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    .line 100
    :goto_40
    invoke-virtual {p0, v3}, Landroid/telecom/Logging/Session;->getFullMethodPath(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/telecom/Logging/Session$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static blacklist getInfo(Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session$Info;
    .registers 5
    .param p0, "s"    # Landroid/telecom/Logging/Session;

    .line 79
    new-instance v0, Landroid/telecom/Logging/Session$Info;

    invoke-static {p0}, Landroid/telecom/Logging/Session;->-$$Nest$mgetFullSessionId(Landroid/telecom/Logging/Session;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Landroid/telecom/Log;->DEBUG:Z

    if-nez v2, :cond_12

    .line 80
    invoke-static {p0}, Landroid/telecom/Logging/Session;->-$$Nest$misSessionExternal(Landroid/telecom/Logging/Session;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 79
    :goto_13
    invoke-virtual {p0, v2}, Landroid/telecom/Logging/Session;->getFullMethodPath(Z)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/telecom/Logging/Session$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget-object v0, p0, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Landroid/telecom/Logging/Session$Info;->ownerInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return-void
.end method
