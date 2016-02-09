.class public Landroid/accounts/AuthenticatorDescription;
.super Ljava/lang/Object;
.source "AuthenticatorDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AuthenticatorDescription$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accountPreferencesId:I

.field public final customTokens:Z

.field public final iconId:I

.field public final labelId:I

.field public final packageName:Ljava/lang/String;

.field public final smallIconId:I

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 134
    new-instance v0, Landroid/accounts/AuthenticatorDescription$1;

    #@2
    invoke-direct {v0}, Landroid/accounts/AuthenticatorDescription$1;-><init>()V

    #@5
    .line 133
    sput-object v0, Landroid/accounts/AuthenticatorDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@a
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    #@10
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    #@16
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    #@1c
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    #@22
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    #@28
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@2b
    move-result v1

    #@2c
    if-ne v1, v0, :cond_0

    #@2e
    :goto_0
    iput-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    #@30
    .line 89
    return-void

    #@31
    .line 96
    :cond_0
    const/4 v0, 0x0

    #@32
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/accounts/AuthenticatorDescription;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/accounts/AuthenticatorDescription;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 80
    iput-object p1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@6
    .line 81
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    #@9
    .line 82
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    #@b
    .line 83
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    #@d
    .line 84
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    #@f
    .line 85
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    #@11
    .line 86
    iput-boolean v1, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    #@13
    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "labelId"    # I
    .param p4, "iconId"    # I
    .param p5, "smallIconId"    # I
    .param p6, "prefId"    # I

    #@0
    .prologue
    .line 66
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    #@b
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "labelId"    # I
    .param p4, "iconId"    # I
    .param p5, "smallIconId"    # I
    .param p6, "prefId"    # I
    .param p7, "customTokens"    # Z

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "type cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 54
    :cond_0
    if-nez p2, :cond_1

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "packageName cannot be null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 55
    :cond_1
    iput-object p1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@1b
    .line 56
    iput-object p2, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    #@1d
    .line 57
    iput p3, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    #@1f
    .line 58
    iput p4, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    #@21
    .line 59
    iput p5, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    #@23
    .line 60
    iput p6, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    #@25
    .line 61
    iput-boolean p7, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    #@27
    .line 52
    return-void
.end method

.method public static newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "type cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 76
    :cond_0
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    #@d
    invoke-direct {v0, p0}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;)V

    #@10
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 111
    if-ne p1, p0, :cond_0

    #@2
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 112
    :cond_0
    instance-of v1, p1, Landroid/accounts/AuthenticatorDescription;

    #@6
    if-nez v1, :cond_1

    #@8
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 113
    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    #@d
    .line 114
    .local v0, "other":Landroid/accounts/AuthenticatorDescription;
    iget-object v1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@f
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "AuthenticatorDescription {type="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "}"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 124
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 125
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 126
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 127
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 128
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 129
    iget-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    #@20
    if-eqz v0, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    :goto_0
    int-to-byte v0, v0

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@27
    .line 122
    return-void

    #@28
    .line 129
    :cond_0
    const/4 v0, 0x0

    #@29
    goto :goto_0
.end method
