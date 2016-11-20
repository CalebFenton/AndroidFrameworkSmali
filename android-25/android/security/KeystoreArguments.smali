.class public Landroid/security/KeystoreArguments;
.super Ljava/lang/Object;
.source "KeystoreArguments.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeystoreArguments$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/KeystoreArguments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public args:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    new-instance v0, Landroid/security/KeystoreArguments$1;

    #@2
    invoke-direct {v0}, Landroid/security/KeystoreArguments$1;-><init>()V

    #@5
    sput-object v0, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/security/KeystoreArguments;->args:[[B

    #@6
    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    invoke-direct {p0, p1}, Landroid/security/KeystoreArguments;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/KeystoreArguments;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/security/KeystoreArguments;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>([[B)V
    .locals 0
    .param p1, "args"    # [[B

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Landroid/security/KeystoreArguments;->args:[[B

    #@5
    .line 44
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 66
    .local v1, "length":I
    new-array v2, v1, [[B

    #@6
    iput-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    #@8
    .line 67
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@b
    .line 68
    iget-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    #@d
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@10
    move-result-object v3

    #@11
    aput-object v3, v2, v0

    #@13
    .line 67
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 74
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    iget-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    #@3
    if-nez v2, :cond_1

    #@5
    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 53
    :cond_0
    return-void

    #@9
    .line 57
    :cond_1
    iget-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    #@b
    array-length v2, v2

    #@c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 58
    iget-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    #@11
    array-length v3, v2

    #@12
    :goto_0
    if-ge v1, v3, :cond_0

    #@14
    aget-object v0, v2, v1

    #@16
    .line 59
    .local v0, "arg":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@19
    .line 58
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0
.end method
