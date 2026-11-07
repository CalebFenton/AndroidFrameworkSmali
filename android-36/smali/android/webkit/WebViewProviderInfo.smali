.class public final Landroid/webkit/WebViewProviderInfo;
.super Ljava/lang/Object;
.source "WebViewProviderInfo.java"

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
            "Landroid/webkit/WebViewProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final whitelist availableByDefault:Z

.field public final whitelist description:Ljava/lang/String;

.field public final whitelist isFallback:Z

.field public final whitelist packageName:Ljava/lang/String;

.field public final whitelist signatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/webkit/WebViewProviderInfo$1;

    invoke-direct {v0}, Landroid/webkit/WebViewProviderInfo$1;-><init>()V

    sput-object v0, Landroid/webkit/WebViewProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    iput-boolean v0, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    iput-boolean v1, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    .line 69
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/webkit/WebViewProviderInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/webkit/WebViewProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "availableByDefault"    # Z
    .param p4, "isFallback"    # Z
    .param p5, "signatures"    # [Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    .line 39
    iput-boolean p3, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    .line 40
    iput-boolean p4, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    .line 41
    const/4 v0, 0x0

    if-nez p5, :cond_13

    .line 42
    new-array v0, v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_2e

    .line 44
    :cond_13
    array-length v1, p5

    new-array v1, v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    .line 45
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_19
    array-length v2, p5

    if-ge v1, v2, :cond_2e

    .line 46
    iget-object v2, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v3, Landroid/content/pm/Signature;

    aget-object v4, p5, v1

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v3, v2, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 49
    .end local v1    # "n":I
    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 89
    :cond_4
    instance-of v1, p1, Landroid/webkit/WebViewProviderInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    move-object v1, p1

    check-cast v1, Landroid/webkit/WebViewProviderInfo;

    .line 90
    .local v1, "that":Landroid/webkit/WebViewProviderInfo;
    iget-object v3, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    iget-object v4, v1, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-boolean v3, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    iget-boolean v4, v1, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-ne v3, v4, :cond_37

    iget-boolean v3, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    iget-boolean v4, v1, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-ne v3, v4, :cond_37

    iget-object v3, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    .line 94
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_38

    :cond_37
    move v0, v2

    .line 90
    :goto_38
    return v0

    .line 96
    .end local v1    # "that":Landroid/webkit/WebViewProviderInfo;
    :cond_39
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 102
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    .line 103
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 102
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewProviderInfo; packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " description=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" availableByDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isFallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " signatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    .line 112
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-boolean v0, p0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-boolean v0, p0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 84
    return-void
.end method
