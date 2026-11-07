.class public final Landroid/media/tv/CommandRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "CommandRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist ARGUMENT_TYPE_JSON:Ljava/lang/String; = "json"

.field public static final whitelist ARGUMENT_TYPE_XML:Ljava/lang/String; = "xml"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/CommandRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x7


# instance fields
.field private final blacklist mArgumentType:Ljava/lang/String;

.field private final blacklist mArguments:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNamespace:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/media/tv/CommandRequest$1;

    invoke-direct {v0}, Landroid/media/tv/CommandRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/CommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "arguments"    # Ljava/lang/String;
    .param p6, "argumentType"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 58
    iput-object p3, p0, Landroid/media/tv/CommandRequest;->mNamespace:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Landroid/media/tv/CommandRequest;->mName:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Landroid/media/tv/CommandRequest;->mArguments:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Landroid/media/tv/CommandRequest;->mArgumentType:Ljava/lang/String;

    .line 62
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 65
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandRequest;->mNamespace:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandRequest;->mName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandRequest;->mArguments:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandRequest;->mArgumentType:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/CommandRequest;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 52
    new-instance v0, Landroid/media/tv/CommandRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/CommandRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getArgumentType()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mArgumentType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getArguments()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mArguments:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mArguments:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroid/media/tv/CommandRequest;->mArgumentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return-void
.end method
