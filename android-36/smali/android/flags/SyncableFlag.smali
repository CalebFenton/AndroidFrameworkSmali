.class public final Landroid/flags/SyncableFlag;
.super Ljava/lang/Object;
.source "SyncableFlag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/flags/SyncableFlag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDynamic:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNamespace:Ljava/lang/String;

.field private final blacklist mOverridden:Z

.field private final blacklist mValue:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/flags/SyncableFlag$1;

    invoke-direct {v0}, Landroid/flags/SyncableFlag$1;-><init>()V

    sput-object v0, Landroid/flags/SyncableFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "dynamic"    # Z

    .line 38
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "namespace":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/String;
    .end local p4    # "dynamic":Z
    .local v1, "namespace":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    .local v4, "dynamic":Z
    invoke-direct/range {v0 .. v5}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "dynamic"    # Z
    .param p5, "overridden"    # Z

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/flags/SyncableFlag;->mNamespace:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroid/flags/SyncableFlag;->mName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Landroid/flags/SyncableFlag;->mValue:Ljava/lang/String;

    .line 51
    iput-boolean p4, p0, Landroid/flags/SyncableFlag;->mDynamic:Z

    .line 52
    iput-boolean p5, p0, Landroid/flags/SyncableFlag;->mOverridden:Z

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/flags/SyncableFlag;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNamespace()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/flags/SyncableFlag;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/flags/SyncableFlag;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isDynamic()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Landroid/flags/SyncableFlag;->mDynamic:Z

    return v0
.end method

.method public blacklist isOverridden()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Landroid/flags/SyncableFlag;->mOverridden:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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

    .line 101
    iget-object v0, p0, Landroid/flags/SyncableFlag;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Landroid/flags/SyncableFlag;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Landroid/flags/SyncableFlag;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-boolean v0, p0, Landroid/flags/SyncableFlag;->mDynamic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 105
    iget-boolean v0, p0, Landroid/flags/SyncableFlag;->mOverridden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    return-void
.end method
