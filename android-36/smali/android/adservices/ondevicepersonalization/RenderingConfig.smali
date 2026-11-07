.class public final Landroid/adservices/ondevicepersonalization/RenderingConfig;
.super Ljava/lang/Object;
.source "RenderingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/RenderingConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 139
    new-instance v0, Landroid/adservices/ondevicepersonalization/RenderingConfig$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/RenderingConfig$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    nop

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->mKeys:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 131
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->mKeys:Ljava/util/List;

    .line 132
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->mKeys:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    nop

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->mKeys:Ljava/util/List;

    .line 64
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->mKeys:Ljava/util/List;

    .line 65
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->mKeys:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 89
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 91
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 93
    .local v0, "that":Landroid/adservices/ondevicepersonalization/RenderingConfig;
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->mKeys:Ljava/util/List;

    iget-object v2, v0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->mKeys:Ljava/util/List;

    .line 94
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 93
    return v1

    .line 89
    .end local v0    # "that":Landroid/adservices/ondevicepersonalization/RenderingConfig;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 103
    const/4 v0, 0x1

    .line 104
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->mKeys:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 105
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig;->mKeys:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 115
    return-void
.end method
