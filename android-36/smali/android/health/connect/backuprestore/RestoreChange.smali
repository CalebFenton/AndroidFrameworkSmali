.class public final Landroid/health/connect/backuprestore/RestoreChange;
.super Ljava/lang/Object;
.source "RestoreChange.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/backuprestore/RestoreChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mData:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/health/connect/backuprestore/RestoreChange$1;

    invoke-direct {v0}, Landroid/health/connect/backuprestore/RestoreChange$1;-><init>()V

    sput-object v0, Landroid/health/connect/backuprestore/RestoreChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/backuprestore/RestoreChange;->mData:[B

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/backuprestore/RestoreChange-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/backuprestore/RestoreChange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2
    .param p1, "data"    # [B

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/health/connect/backuprestore/RestoreChange;->mData:[B

    .line 49
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

    .line 53
    instance-of v0, p1, Landroid/health/connect/backuprestore/RestoreChange;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Landroid/health/connect/backuprestore/RestoreChange;

    .local v0, "that":Landroid/health/connect/backuprestore/RestoreChange;
    iget-object v1, p0, Landroid/health/connect/backuprestore/RestoreChange;->mData:[B

    iget-object v2, v0, Landroid/health/connect/backuprestore/RestoreChange;->mData:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    .end local v0    # "that":Landroid/health/connect/backuprestore/RestoreChange;
    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public blacklist getData()[B
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/health/connect/backuprestore/RestoreChange;->mData:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/health/connect/backuprestore/RestoreChange;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget-object v0, p0, Landroid/health/connect/backuprestore/RestoreChange;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 95
    return-void
.end method
