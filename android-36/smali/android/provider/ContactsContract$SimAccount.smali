.class public final Landroid/provider/ContactsContract$SimAccount;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimAccount"
.end annotation


# static fields
.field public static final whitelist ADN_EF_TYPE:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/ContactsContract$SimAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FDN_EF_TYPE:I = 0x2

.field public static final whitelist SDN_EF_TYPE:I = 0x3

.field public static final whitelist UNKNOWN_EF_TYPE:I


# instance fields
.field private final blacklist mAccountName:Ljava/lang/String;

.field private final blacklist mAccountType:Ljava/lang/String;

.field private final blacklist mEfType:I

.field private final blacklist mSimSlotIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9159
    new-instance v0, Landroid/provider/ContactsContract$SimAccount$1;

    invoke-direct {v0}, Landroid/provider/ContactsContract$SimAccount$1;-><init>()V

    sput-object v0, Landroid/provider/ContactsContract$SimAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "efType"    # I

    .line 9087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9088
    iput-object p1, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    .line 9089
    iput-object p2, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    .line 9090
    iput p3, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    .line 9091
    iput p4, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    .line 9092
    return-void
.end method

.method public static blacklist getValidEfTypes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9079
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 9156
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 9130
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 9131
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 9135
    :cond_8
    :try_start_8
    move-object v2, p1

    check-cast v2, Landroid/provider/ContactsContract$SimAccount;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_b} :catch_30

    .line 9138
    .local v2, "toCompare":Landroid/provider/ContactsContract$SimAccount;
    nop

    .line 9140
    iget v3, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    iget v4, v2, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    iget v4, v2, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    .line 9142
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    .line 9143
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    nop

    .line 9140
    :goto_2f
    return v0

    .line 9136
    .end local v2    # "toCompare":Landroid/provider/ContactsContract$SimAccount;
    :catch_30
    move-exception v1

    .line 9137
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist getAccountName()Ljava/lang/String;
    .registers 2

    .line 9098
    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAccountType()Ljava/lang/String;
    .registers 2

    .line 9105
    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEfType()I
    .registers 2

    .line 9120
    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    return v0
.end method

.method public whitelist getSimSlotIndex()I
    .registers 2

    .line 9113
    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 9125
    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    iget-object v1, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    iget v2, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 9148
    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9149
    iget-object v0, p0, Landroid/provider/ContactsContract$SimAccount;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9150
    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mSimSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9151
    iget v0, p0, Landroid/provider/ContactsContract$SimAccount;->mEfType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9152
    return-void
.end method
