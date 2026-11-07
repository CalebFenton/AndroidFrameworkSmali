.class public Landroid/app/backup/RestoreDescription;
.super Ljava/lang/Object;
.source "RestoreDescription.java"

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
            "Landroid/app/backup/RestoreDescription;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

.field private static final greylist-max-o NO_MORE_PACKAGES_SENTINEL:Ljava/lang/String; = "NO_MORE_PACKAGES"

.field public static final whitelist TYPE_FULL_STREAM:I = 0x2

.field public static final whitelist TYPE_KEY_VALUE:I = 0x1


# instance fields
.field private final greylist-max-o mDataType:I

.field private final greylist-max-o mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/app/backup/RestoreDescription;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Landroid/app/backup/RestoreDescription;

    const-string v1, "NO_MORE_PACKAGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    .line 94
    new-instance v0, Landroid/app/backup/RestoreDescription$1;

    invoke-direct {v0}, Landroid/app/backup/RestoreDescription$1;-><init>()V

    sput-object v0, Landroid/app/backup/RestoreDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    .line 111
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/backup/RestoreDescription-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/backup/RestoreDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    .line 69
    iput p2, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDataType()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestoreDescription{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    iget v1, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    const-string v1, "KEY_VALUE"

    goto :goto_21

    :cond_1f
    const-string v1, "STREAM"

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget-object v0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return-void
.end method
