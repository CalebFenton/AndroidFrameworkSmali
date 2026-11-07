.class public final Landroid/app/admin/UnknownAuthority;
.super Landroid/app/admin/Authority;
.source "UnknownAuthority.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/UnknownAuthority;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;


# instance fields
.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/app/admin/UnknownAuthority;

    invoke-direct {v0}, Landroid/app/admin/UnknownAuthority;-><init>()V

    sput-object v0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    .line 98
    new-instance v0, Landroid/app/admin/UnknownAuthority$1;

    invoke-direct {v0}, Landroid/app/admin/UnknownAuthority$1;-><init>()V

    sput-object v0, Landroid/app/admin/UnknownAuthority;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/app/admin/Authority;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/admin/UnknownAuthority;->mName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/admin/UnknownAuthority;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/UnknownAuthority-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/UnknownAuthority;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Landroid/app/admin/Authority;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/app/admin/UnknownAuthority;->mName:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 76
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 77
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 78
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/admin/UnknownAuthority;

    .line 79
    .local v0, "other":Landroid/app/admin/UnknownAuthority;
    iget-object v1, p0, Landroid/app/admin/UnknownAuthority;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/admin/UnknownAuthority;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 77
    .end local v0    # "other":Landroid/app/admin/UnknownAuthority;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/app/admin/UnknownAuthority;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/app/admin/UnknownAuthority;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultAuthority {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/UnknownAuthority;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 94
    iget-object v0, p0, Landroid/app/admin/UnknownAuthority;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 95
    return-void
.end method
