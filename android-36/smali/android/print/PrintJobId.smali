.class public final Landroid/print/PrintJobId;
.super Ljava/lang/Object;
.source "PrintJobId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrintJobId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mValue:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/print/PrintJobId$1;

    invoke-direct {v0}, Landroid/print/PrintJobId$1;-><init>()V

    sput-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/print/PrintJobId;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static greylist-max-o unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/print/PrintJobId;

    invoke-direct {v0, p0}, Landroid/print/PrintJobId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 65
    return v0

    .line 67
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 68
    return v1

    .line 70
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 71
    return v1

    .line 73
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/print/PrintJobId;

    .line 74
    .local v2, "other":Landroid/print/PrintJobId;
    iget-object v3, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    iget-object v4, v2, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 75
    return v1

    .line 77
    :cond_21
    return v0
.end method

.method public greylist-max-o flattenToString()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 56
    const/16 v0, 0x1f

    .line 57
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 59
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget-object v0, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
