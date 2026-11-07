.class public Landroid/accounts/AuthenticatorDescription;
.super Ljava/lang/Object;
.source "AuthenticatorDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final whitelist accountPreferencesId:I

.field public final whitelist customTokens:Z

.field public final whitelist iconId:I

.field public final whitelist labelId:I

.field public final whitelist packageName:Ljava/lang/String;

.field public final whitelist smallIconId:I

.field public final whitelist type:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Landroid/accounts/AuthenticatorDescription$1;

    invoke-direct {v0}, Landroid/accounts/AuthenticatorDescription$1;-><init>()V

    sput-object v0, Landroid/accounts/AuthenticatorDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    iput-boolean v1, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 102
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/accounts/AuthenticatorDescription-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accounts/AuthenticatorDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-p <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 87
    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 88
    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 89
    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 90
    iput-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 91
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 15
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "labelId"    # I
    .param p4, "iconId"    # I
    .param p5, "smallIconId"    # I
    .param p6, "prefId"    # I

    .line 69
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "labelId":I
    .end local p4    # "iconId":I
    .end local p5    # "smallIconId":I
    .end local p6    # "prefId":I
    .local v1, "type":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "labelId":I
    .local v4, "iconId":I
    .local v5, "smallIconId":I
    .local v6, "prefId":I
    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 70
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .registers 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "labelId"    # I
    .param p4, "iconId"    # I
    .param p5, "smallIconId"    # I
    .param p6, "prefId"    # I
    .param p7, "customTokens"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_1f

    .line 57
    if-eqz p2, :cond_16

    .line 58
    iput-object p1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 60
    iput p3, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 61
    iput p4, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 62
    iput p5, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 63
    iput p6, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 64
    iput-boolean p7, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 65
    return-void

    .line 57
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .line 78
    if-eqz p0, :cond_8

    .line 79
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    invoke-direct {v0, p0}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 78
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 116
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    return v0

    .line 117
    :cond_4
    instance-of v0, p1, Landroid/accounts/AuthenticatorDescription;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 118
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 119
    .local v0, "other":Landroid/accounts/AuthenticatorDescription;
    iget-object v1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticatorDescription {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

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

    .line 128
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 135
    return-void
.end method
