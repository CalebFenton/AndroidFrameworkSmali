.class public final Landroid/adservices/common/AdTechIdentifier;
.super Ljava/lang/Object;
.source "AdTechIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist UNSET_AD_TECH_IDENTIFIER:Landroid/adservices/common/AdTechIdentifier;


# instance fields
.field private final blacklist mIdentifier:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 28
    nop

    .line 29
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/adservices/common/AdTechIdentifier;->fromString(Ljava/lang/String;Z)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    sput-object v0, Landroid/adservices/common/AdTechIdentifier;->UNSET_AD_TECH_IDENTIFIER:Landroid/adservices/common/AdTechIdentifier;

    .line 50
    new-instance v0, Landroid/adservices/common/AdTechIdentifier$1;

    invoke-direct {v0}, Landroid/adservices/common/AdTechIdentifier$1;-><init>()V

    sput-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/adservices/common/AdTechIdentifier;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/AdTechIdentifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AdTechIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "adTechIdentifier"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/adservices/common/AdTechIdentifier;-><init>(Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "adTechIdentifier"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "Input ad tech identifier must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    if-eqz p2, :cond_d

    .line 44
    invoke-direct {p0, p1}, Landroid/adservices/common/AdTechIdentifier;->validate(Ljava/lang/String;)V

    .line 46
    :cond_d
    iput-object p1, p0, Landroid/adservices/common/AdTechIdentifier;->mIdentifier:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static whitelist fromString(Ljava/lang/String;)Landroid/adservices/common/AdTechIdentifier;
    .registers 2
    .param p0, "source"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/adservices/common/AdTechIdentifier;->fromString(Ljava/lang/String;Z)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromString(Ljava/lang/String;Z)Landroid/adservices/common/AdTechIdentifier;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "validate"    # Z

    .line 134
    new-instance v0, Landroid/adservices/common/AdTechIdentifier;

    invoke-direct {v0, p0, p1}, Landroid/adservices/common/AdTechIdentifier;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private blacklist validate(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputString"    # Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    instance-of v0, p1, Landroid/adservices/common/AdTechIdentifier;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/adservices/common/AdTechIdentifier;->mIdentifier:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/adservices/common/AdTechIdentifier;

    .line 89
    invoke-virtual {v1}, Landroid/adservices/common/AdTechIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 88
    :goto_16
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/adservices/common/AdTechIdentifier;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/adservices/common/AdTechIdentifier;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Landroid/adservices/common/AdTechIdentifier;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method
