.class public final Landroid/window/DisplayAreaInfo;
.super Ljava/lang/Object;
.source "DisplayAreaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/DisplayAreaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist configuration:Landroid/content/res/Configuration;

.field public final blacklist displayId:I

.field public final blacklist featureId:I

.field public blacklist rootDisplayAreaId:I

.field public final blacklist token:Landroid/window/WindowContainerToken;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/window/DisplayAreaInfo$1;

    invoke-direct {v0}, Landroid/window/DisplayAreaInfo$1;-><init>()V

    sput-object v0, Landroid/window/DisplayAreaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/DisplayAreaInfo;->rootDisplayAreaId:I

    .line 66
    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    .line 67
    iget-object v0, p0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/DisplayAreaInfo;->displayId:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/DisplayAreaInfo;->featureId:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/DisplayAreaInfo;->rootDisplayAreaId:I

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/DisplayAreaInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/DisplayAreaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/WindowContainerToken;II)V
    .registers 5
    .param p1, "token"    # Landroid/window/WindowContainerToken;
    .param p2, "displayId"    # I
    .param p3, "featureId"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/DisplayAreaInfo;->rootDisplayAreaId:I

    .line 60
    iput-object p1, p0, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    .line 61
    iput p2, p0, Landroid/window/DisplayAreaInfo;->displayId:I

    .line 62
    iput p3, p0, Landroid/window/DisplayAreaInfo;->featureId:I

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayAreaInfo{token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget-object v0, p0, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerToken;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    iget-object v0, p0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    iget v0, p0, Landroid/window/DisplayAreaInfo;->displayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Landroid/window/DisplayAreaInfo;->featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Landroid/window/DisplayAreaInfo;->rootDisplayAreaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method
