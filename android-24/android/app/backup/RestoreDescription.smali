.class public Landroid/app/backup/RestoreDescription;
.super Ljava/lang/Object;
.source "RestoreDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/RestoreDescription$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/backup/RestoreDescription;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

.field private static final NO_MORE_PACKAGES_SENTINEL:Ljava/lang/String; = ""

.field public static final TYPE_FULL_STREAM:I = 0x2

.field public static final TYPE_KEY_VALUE:I = 0x1


# instance fields
.field private final mDataType:I

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/app/backup/RestoreDescription;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 44
    new-instance v0, Landroid/app/backup/RestoreDescription;

    #@2
    const-string/jumbo v1, ""

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v0, v1, v2}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    #@9
    .line 43
    sput-object v0, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    #@b
    .line 93
    new-instance v0, Landroid/app/backup/RestoreDescription$1;

    #@d
    invoke-direct {v0}, Landroid/app/backup/RestoreDescription$1;-><init>()V

    #@10
    .line 92
    sput-object v0, Landroid/app/backup/RestoreDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12
    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    #@9
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    #@f
    .line 106
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/backup/RestoreDescription;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/backup/RestoreDescription;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    iput-object p1, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    #@5
    .line 67
    iput p2, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    #@7
    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDataType()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    #@2
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RestoreDescription{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " : "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 58
    iget v0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    #@1b
    const/4 v2, 0x1

    #@1c
    if-ne v0, v2, :cond_0

    #@1e
    const-string/jumbo v0, "KEY_VALUE"

    #@21
    .line 57
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 59
    const/16 v1, 0x7d

    #@27
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    .line 58
    :cond_0
    const-string/jumbo v0, "STREAM"

    #@33
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 89
    iget v0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 87
    return-void
.end method
