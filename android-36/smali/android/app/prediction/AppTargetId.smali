.class public final Landroid/app/prediction/AppTargetId;
.super Ljava/lang/Object;
.source "AppTargetId.java"

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
            "Landroid/app/prediction/AppTargetId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Landroid/app/prediction/AppTargetId$1;

    invoke-direct {v0}, Landroid/app/prediction/AppTargetId$1;-><init>()V

    sput-object v0, Landroid/app/prediction/AppTargetId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTargetId;->mId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/prediction/AppTargetId-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/prediction/AppTargetId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/app/prediction/AppTargetId;->mId:Ljava/lang/String;

    .line 43
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
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 61
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

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return v0

    .line 63
    :cond_14
    move-object v0, p1

    check-cast v0, Landroid/app/prediction/AppTargetId;

    .line 64
    .local v0, "other":Landroid/app/prediction/AppTargetId;
    iget-object v1, p0, Landroid/app/prediction/AppTargetId;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/prediction/AppTargetId;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/app/prediction/AppTargetId;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/app/prediction/AppTargetId;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget-object v0, p0, Landroid/app/prediction/AppTargetId;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
